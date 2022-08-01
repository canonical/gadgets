/*
 * Copyright (C) 2022 Canonical Ltd
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'package:device_tree_lib/inxi/executor/inxi_executor.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'sample_tree.dart';

import 'dart:core';
import 'package:device_tree_lib/device_tree_lib.dart';

class DeviceReportController {
  final DeviceTree deviceTree;

  late final treeController =
      TreeViewController(rootNode: generateTree(deviceTree, null));

  DeviceReportController({required this.deviceTree});

  final double? nodeHeight = null;

  late final scrollController = AutoScrollController();

  void scrollTo(WidgetRef ref, TreeNode node) {
    final nodeToScroll =
        node.parent == treeController.rootNode ? node : node.parent ?? node;

    final nodeIndex = treeController.indexOf(nodeToScroll);

    scrollController.scrollToIndex(nodeIndex,
        preferPosition: AutoScrollPosition.begin,
        duration: const Duration(milliseconds: 500));
  }
}

class DeviceReportControllerScope extends InheritedWidget {
  const DeviceReportControllerScope({
    Key? key,
    required this.controller,
    required Widget child,
  }) : super(key: key, child: child);

  final DeviceReportController controller;

  static DeviceReportControllerScope of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<DeviceReportControllerScope>()!;
  }

  @override
  bool updateShouldNotify(DeviceReportControllerScope oldWidget) =>
      controller.deviceTree != oldWidget.controller.deviceTree;
}

@immutable
class NodeSelectionState {
  final String id;
  final bool isSelected;

  const NodeSelectionState({required this.id, required this.isSelected});

  NodeSelectionState copyWith({String? id, bool? isSelected}) =>
      NodeSelectionState(
          id: id ?? this.id, isSelected: isSelected ?? this.isSelected);
}
