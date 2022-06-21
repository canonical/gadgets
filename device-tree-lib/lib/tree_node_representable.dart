import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:device_tree_lib/all.dart';

abstract class TreeNodeRepresentable {
  TreeNode treeNodeRepresentation();
  Iterable<TreeNodeRepresentable> children();
}
