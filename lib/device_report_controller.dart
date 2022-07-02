import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'sample_tree.dart';

import 'dart:core';
import 'dart:io';
import 'package:device_tree_lib/all.dart';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';

enum ExpansionButtonType { folderFile, chevron }

class DeviceReportController with ChangeNotifier {
  final String? inputPath;

  final _selectedNodesProvider =
      StateProvider<IMap<String, bool>>((ref) => IMap());

  late final selectionStateProvider = StateProvider.family<bool, String>(
      (ref, id) => ref.watch(_selectedNodesProvider)[id] ?? false);

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

  //* == == == == == TreeView == == == == ==

  // late final Map<String, bool> _selectedNodes = {};

  bool isSelected(WidgetRef ref, String id) =>
      ref.read(_selectedNodesProvider)[id] ?? false;

  void toggleSelectionForSubtree(
      WidgetRef ref, TreeViewController treeController,
      {required String id}) {
    final node = treeController.find(id);
    if (node == null) {
      return;
    }

    final shouldSelect = !isSelected(ref, id);
    for (final node in [node].followedBy(node.descendants)) {
      toggleSelection(ref: ref, id: node.id, shouldSelect: shouldSelect);
    }
  }

  void toggleSelection(
      {required WidgetRef ref, required String id, bool? shouldSelect}) {
    shouldSelect ??= !isSelected(ref, id);
    shouldSelect ? _select(ref, id) : _deselect(ref, id);

    notifyListeners();
  }

  void _select(WidgetRef ref, String id) {
    final selectedNodes = ref.read(_selectedNodesProvider);
    ref.read(_selectedNodesProvider.notifier).state =
        selectedNodes.add(id, true);
  }

  void _deselect(WidgetRef ref, String id) {
    final selectedNodes = ref.read(_selectedNodesProvider);
    ref.read(_selectedNodesProvider.notifier).state = selectedNodes.remove(id);
  }

  void selectAll(WidgetRef ref, [bool select = true]) {
    ref.watch(treeControllerProvider).whenData((treeController) {
      if (select) {
        for (var descendant in treeController.rootNode.descendants) {
          ref.read(_selectedNodesProvider.notifier).state =
              ref.read(_selectedNodesProvider).add(descendant.id, true);
        }
      } else {
        for (var descendant in treeController.rootNode.descendants) {
          ref.read(_selectedNodesProvider.notifier).state =
              ref.read(_selectedNodesProvider).remove(descendant.id);
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

      final nodeIndex = treeController.indexOf(nodeToScroll);

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
