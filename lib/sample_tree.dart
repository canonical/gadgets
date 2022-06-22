import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

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

const String sampleRootId = 'Root';

const Map<String, List<String>> kDataSample = {
  sampleRootId: ['A', 'B', 'C', 'D', 'E', 'F'],
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
