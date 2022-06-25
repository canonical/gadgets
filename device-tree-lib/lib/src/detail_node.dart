import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

class Detail implements TreeNodeRepresentable {
  final TreeNodeRepresentable parent;
  final String key;
  final dynamic value;

  Detail({required this.parent, required this.key, required this.value});

  @override
  TreeNode treeNodeRepresentation() {
    final presentedValue = value;
    return TreeNode(id: key, data: this, label: "$presentedValue");
  }

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
