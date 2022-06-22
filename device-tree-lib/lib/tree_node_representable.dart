import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

abstract class TreeNodeRepresentable {
  TreeNode treeNodeRepresentation();
  Iterable<TreeNodeRepresentable> children();
}

TreeNode generateTree(TreeNodeRepresentable treeNodeRepresentable) {
  var parent = treeNodeRepresentable.treeNodeRepresentation();
  var children = treeNodeRepresentable.children();
  if (children.isEmpty) {
    return parent;
  }

  parent.addChildren(children.map((c) => c.treeNodeRepresentation()));
  children.forEach(generateTree);

  return parent;
}
