import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

import 'battery_like.dart';

class NoBatteryDetected implements BatteryLike {
  NoBatteryDetected();
  static bool isRepresentation(Map<String, dynamic> map) =>
      map.keys.length == 1 && map['Message'] != null;

  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: "(No battery detected)", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
