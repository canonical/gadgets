import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'sample_tree.dart';

import 'dart:core';
import 'dart:io';
import 'package:device_tree_lib/all.dart';

enum ExpansionButtonType { folderFile, chevron }

class DeviceReportController with ChangeNotifier {
  final String? inputPath;

  late final treeControllerProvider =
      FutureProvider.autoDispose<TreeViewController>((ref) async {
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

  //* == == == == == TreeView == == == == ==

  late final Map<String, bool> _selectedNodes = {};

  bool isSelected(String id) => _selectedNodes[id] ?? false;

  void toggleSelection(String id, [bool? shouldSelect]) {
    shouldSelect ??= !isSelected(id);
    shouldSelect ? _select(id) : _deselect(id);

    notifyListeners();
  }

  void _select(String id) => _selectedNodes[id] = true;
  void _deselect(String id) => _selectedNodes.remove(id);

  void selectAll(WidgetRef ref, [bool select = true]) {
    ref.read(treeControllerProvider).whenData((treeController) {
      if (select) {
        for (var descendant in treeController.rootNode.descendants) {
          _selectedNodes[descendant.id] = true;
        }
      } else {
        for (var descendant in treeController.rootNode.descendants) {
          _selectedNodes.remove(descendant.id);
        }
      }
      notifyListeners();
    });
  }

  //* == == == == == Scroll == == == == ==

  final double? nodeHeight = null;

  late final scrollController = AutoScrollController();

  void scrollTo(WidgetRef ref, TreeNode node) {
    ref.read(treeControllerProvider).whenData((treeController) {
      final nodeToScroll =
          node.parent == treeController.rootNode ? node : node.parent ?? node;

      final nodeHeight = this.nodeHeight;
      ;
      final nodeIndex = treeController.indexOf(nodeToScroll);
      final double offset = nodeIndex * (nodeHeight ?? 40.0);

      scrollController.scrollToIndex(nodeIndex,
          preferPosition: AutoScrollPosition.begin,
          duration: const Duration(milliseconds: 500));
    });
  }

  //* == == == == == General == == == == ==

  final treeViewTheme = ValueNotifier(const TreeViewTheme(
      lineStyle: LineStyle.connected, roundLineCorners: true));
  final expansionButtonType = ValueNotifier(ExpansionButtonType.folderFile);

  void updateTheme(TreeViewTheme theme) {
    treeViewTheme.value = theme;
  }

  void updateExpansionButton(ExpansionButtonType type) {
    expansionButtonType.value = type;
  }

  @override
  void dispose() {
    scrollController.dispose();

    treeViewTheme.dispose();
    expansionButtonType.dispose();
    super.dispose();
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
