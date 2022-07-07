import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

class CertificationSummary implements TreeNodeRepresentable {
  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: "Certification status", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
