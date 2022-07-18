import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import '../device_tree.dart';
import 'certification_status.dart';

class CertificationSummary implements TreeNodeRepresentable {
  DeviceTree deviceTree;
  CertificationStatus status;

  CertificationSummary({required this.deviceTree, required this.status});

  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: "Certification status", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
