import 'package:flutter/widgets.dart';

import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum ExpansionButtonType { folderFile, chevron }

class DeviceReportController with ChangeNotifier {
  final String? inputPath;
  DeviceReportController({this.inputPath});

  FutureProvider<TreeViewController> treeControllerProvider =
      FutureProvider<TreeViewController>((ref) async {
    final rootNode = TreeNode(id: kRootId);
    generateSampleTree(rootNode);

    final treeController = TreeViewController(rootNode: rootNode);
    return treeController;
  });

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

  final nodeHeight = 40.0;

  late final scrollController = ScrollController();

  void scrollTo(WidgetRef ref, TreeNode node) {
    ref.read(treeControllerProvider).whenData((treeController) {
      final nodeToScroll =
          node.parent == treeController.rootNode ? node : node.parent ?? node;
      final double offset = treeController.indexOf(nodeToScroll) * nodeHeight;

      scrollController.animateTo(
        offset,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  //* == == == == == General == == == == ==

  final treeViewTheme = ValueNotifier(const TreeViewTheme());
  final expansionButtonType = ValueNotifier(ExpansionButtonType.folderFile);

  void updateTheme(TreeViewTheme theme) {
    treeViewTheme.value = theme;
  }

  void updateExpansionButton(ExpansionButtonType type) {
    expansionButtonType.value = type;
  }

  @override
  void dispose() {
    // _treeController.dispose();
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

void generateSampleTree(TreeNode parent) {
  final childrenIds = kDataSample[parent.id];
  if (childrenIds == null) return;

  parent.addChildren(
    childrenIds.map(
      (String childId) => TreeNode(id: childId, label: 'Sample Node'),
    ),
  );
  parent.children.forEach(generateSampleTree);
}

const String kRootId = 'Root';

const Map<String, List<String>> kDataSample = {
  kRootId: ['A', 'B', 'C', 'D', 'E', 'F'],
  'A': ['A 1', 'A 2'],
  'A 2': ['A 2 1'],
  'B': ['B 1', 'B 2', 'B 3'],
  'B 1': ['B 1 1'],
  'B 1 1': ['B 1 1 1', 'B 1 1 2'],
  'B 2': ['B 2 1'],
  'B 2 1': ['B 2 1 1'],
  'C': ['C 1', 'C 2', 'C 3', 'C 4'],
  'C 1': ['C 1 1'],
  'D': ['D 1'],
  'D 1': ['D 1 1'],
  'E': ['E 1'],
  'F': ['F 1', 'F 2'],
};
