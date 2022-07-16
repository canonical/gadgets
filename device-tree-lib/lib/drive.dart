import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

class _InxiKeyDrive {
  static const String total = 'total';
  static const String used = 'used';

  static const String id = 'ID';
  static const String blockSize = 'block-size';
  static const String vendor = 'vendor';
  static const String serial = 'serial';
  static const String type = 'type';
  static const String scheme = 'scheme';
  static const String speed = 'speed';
  static const String lanes = 'lanes';
  static const String temperature = 'temp';
  static const String size = 'size';
  static const String model = 'model';
  static const String rev = 'rev';
  static const String logical = 'logical';
  static const String majorMinor = 'maj-min';
  static const String physical = 'physical';
}

class DriveSummary implements TreeNodeRepresentable {
  final DriveCapacity capacity;
  final Iterable<Drive> drives;

  DriveSummary(this.capacity, this.drives);
  factory DriveSummary.fromReport(Map<String, dynamic> reportMap) {
    final maps = (reportMap["Drives"]! as List).cast<Map<String, dynamic>>();
    final capacity = DriveCapacity.fromMap(
        maps.firstWhere((element) => element[_InxiKeyDrive.total] != null));
    final Iterable<Drive> drives = maps
        .where((element) => element[_InxiKeyDrive.id] != null)
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

class DriveCapacity implements TreeNodeRepresentable {
  final String total;
  final String used;

  DriveCapacity(this.total, this.used);
  factory DriveCapacity.fromMap(Map<String, dynamic> map) {
    return DriveCapacity(map[_InxiKeyDrive.total]!, map[_InxiKeyDrive.used]!);
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "Drive capacity", data: this, label: "used: $used, total: $total");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}

class Drive implements TreeNodeRepresentable {
  final String id;
  final String blockSize;
  final String vendor;
  final String serial;
  final String type;
  final String scheme;
  final String speed;
  final int lanes;
  final String temperature;
  final String size;
  final String model;
  final String rev;
  final String logical;
  final String majorMinor;
  final String physical;

  Drive(
      this.id,
      this.blockSize,
      this.vendor,
      this.serial,
      this.type,
      this.scheme,
      this.speed,
      this.lanes,
      this.temperature,
      this.size,
      this.model,
      this.rev,
      this.logical,
      this.majorMinor,
      this.physical);

  factory Drive.fromMap(Map<String, dynamic> map) {
    return Drive(
        map[_InxiKeyDrive.id]!,
        map[_InxiKeyDrive.blockSize]!,
        map[_InxiKeyDrive.vendor]!,
        map[_InxiKeyDrive.serial]!,
        map[_InxiKeyDrive.type]!,
        map[_InxiKeyDrive.scheme]!,
        map[_InxiKeyDrive.speed]!,
        map[_InxiKeyDrive.lanes]!,
        map[_InxiKeyDrive.temperature]!,
        map[_InxiKeyDrive.size]!,
        map[_InxiKeyDrive.model]!,
        map[_InxiKeyDrive.rev]!,
        map[_InxiKeyDrive.logical]!,
        map[_InxiKeyDrive.majorMinor]!,
        map[_InxiKeyDrive.physical]!);
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: model, data: this, label: "size: $size");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
