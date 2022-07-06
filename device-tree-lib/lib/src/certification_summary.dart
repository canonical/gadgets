import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:collection/collection.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter/widgets.dart';
import 'package:tuple/tuple.dart';

import './detail_node.dart';

class CertificationSummary implements TreeNodeRepresentable {
  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: "Certification status", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
