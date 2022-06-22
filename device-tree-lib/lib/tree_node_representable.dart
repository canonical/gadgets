import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

abstract class TreeNodeRepresentable {
  TreeNode treeNodeRepresentation();
  Iterable<TreeNodeRepresentable> children();
}

TreeNode generateTree(TreeNodeRepresentable item, TreeNode? connectedTo) {
  final node = item.treeNodeRepresentation();
  connectedTo?.addChild(node);

  for (final child in item.children()) {
    generateTree(child, node);
  }
  return node;
}
