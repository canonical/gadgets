import 'package:device_tree_lib/tree_node_representable.dart';

import 'battery_like.dart';

abstract class Battery implements BatteryLike, TreeNodeRepresentable {
  String get status;
  String get serial;
  String get model;
  String get charge;
}
