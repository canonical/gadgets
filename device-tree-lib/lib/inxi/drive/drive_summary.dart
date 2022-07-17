import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

import 'drive.dart';
import 'drive_capacity.dart';
import 'drive_keys.dart';

class DriveSummary implements TreeNodeRepresentable {
  final DriveCapacity capacity;
  final Iterable<Drive> drives;

  DriveSummary(this.capacity, this.drives);
  factory DriveSummary.fromReport(Map<String, dynamic> reportMap) {
    final maps = (reportMap["Drives"]! as List).cast<Map<String, dynamic>>();
    final capacity = DriveCapacity.fromMap(
        maps.firstWhere((element) => element[InxiKeyDrive.total] != null));
    final Iterable<Drive> drives = maps
        .where((element) => element[InxiKeyDrive.id] != null)
        .map((d) => Drive.fromMap(d));

    return DriveSummary(capacity, drives);
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "Drives", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    List<List<TreeNodeRepresentable>> childList = [
      [capacity],
      drives.toList()
    ];

    return childList.expand((element) => element);
  }
}
