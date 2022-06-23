import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

class _InxiKeyPartition {
  static const String majorMinor = "maj-min";
  static const String blockSize = 'block-size';
  static const String device = 'dev';
  static const String rawSize = 'raw-size';
  static const String uuid = 'uuid';
  static const String size = 'size';
  static const String used = 'used';
  static const String label = 'label';
  static const String id = 'ID';
  static const String fs = 'fs';
  static const String mapped = 'mapped';
}

class PartitionSummary implements TreeNodeRepresentable {
  Iterable<Partition> partitions;
  PartitionSummary(this.partitions);

  factory PartitionSummary.fromReport(Map<String, dynamic> report) {
    return PartitionSummary(Partition.fromReport(report));
  }

  @override
  TreeNode treeNodeRepresentation() => TreeNode(id: "Partitions", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => partitions;
}

class Partition implements TreeNodeRepresentable {
  final String majorMinor;
  final String blockSize;
  final String device;
  final String rawSize;
  final String uuid;
  final String size;
  final String? used;
  final String label;
  final String id;
  final String fs;
  final String? mapped;

  Partition(
      this.majorMinor,
      this.blockSize,
      this.device,
      this.rawSize,
      this.uuid,
      this.size,
      this.used,
      this.label,
      this.id,
      this.fs,
      this.mapped);

  factory Partition.fromMap(Map<String, dynamic> map) {
    return Partition(
        map[_InxiKeyPartition.majorMinor],
        map[_InxiKeyPartition.blockSize],
        map[_InxiKeyPartition.device],
        map[_InxiKeyPartition.rawSize],
        map[_InxiKeyPartition.uuid],
        map[_InxiKeyPartition.size],
        map[_InxiKeyPartition.used],
        map[_InxiKeyPartition.label],
        map[_InxiKeyPartition.id],
        map[_InxiKeyPartition.fs],
        map[_InxiKeyPartition.mapped]);
  }

  static Iterable<Partition> fromReport(Map<String, dynamic> reportMap) {
    return (reportMap["Partition"]! as List)
        .cast<Map<String, dynamic>>()
        .map((p) => Partition.fromMap(p));
  }

  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: "$used ($size)", data: this, label: "$fs ($device)");

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
