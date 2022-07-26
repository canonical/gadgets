import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'sample_tree.dart';

import 'dart:core';
import 'dart:io';
import 'package:device_tree_lib/device_tree_lib.dart';

class DeviceReportController {
  final String? inputPath;

  late final treeControllerProvider =
      FutureProvider<TreeViewController>((ref) async {
    final path = inputPath;
    if (path != null) {
      final deviceTree = await DeviceTree.from(file: File(path));
      final rootNode = generateTree(deviceTree, null);
      return TreeViewController(rootNode: rootNode);
    }
    final rootNode = TreeNode(id: sampleRootId);
    generateSampleTree(rootNode);

    final treeController = TreeViewController(rootNode: rootNode);
    return treeController;
  });

  DeviceReportController({this.inputPath});

  final double? nodeHeight = null;

  late final scrollController = AutoScrollController();

  void scrollTo(WidgetRef ref, TreeNode node) {
    ref.read(treeControllerProvider).whenData((treeController) {
      final nodeToScroll =
          node.parent == treeController.rootNode ? node : node.parent ?? node;

      final nodeIndex = treeController.indexOf(nodeToScroll);

      scrollController.scrollToIndex(nodeIndex,
          preferPosition: AutoScrollPosition.begin,
          duration: const Duration(milliseconds: 500));
    });
  }
}

class DeviceReportControllerScope extends InheritedWidget {
  const DeviceReportControllerScope({
    Key? key,
    required this.controller,
    required Widget child,
  }) : super(key: key, child: child);

  final DeviceReportController controller;

  @override
  bool updateShouldNotify(DeviceReportControllerScope oldWidget) => false;
}
