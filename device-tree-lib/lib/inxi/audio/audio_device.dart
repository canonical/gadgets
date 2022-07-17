import 'package:device_tree_lib/tree_node_representable.dart';

abstract class AudioDevice implements TreeNodeRepresentable {
  String get name;
  String get driver;
  String get classID;
}
