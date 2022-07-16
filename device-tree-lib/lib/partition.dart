import 'dart:math';

import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:unicons/unicons.dart';

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

class PartitionSummary implements TreeNodeRepresentable, WithIcon {
  Iterable<Partition> partitions;
  PartitionSummary(this.partitions);

  factory PartitionSummary.fromReport(Map<String, dynamic> report) {
    return PartitionSummary(Partition.fromReport(report));
  }

  @override
  TreeNode treeNodeRepresentation() => TreeNode(id: "Storage", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => partitions;

  @override
  get iconData => UniconsLine.hdd;
}

class Partition implements TreeNodeRepresentable {
  final String? majorMinor;
  final String? blockSize;
  final String? device;
  final String? rawSize;
  final String? uuid;
  final String size;
  final String? used;
  final String? label;
  final String id;
  final String fs;
  final String? mapped;

  Partition(
      {required this.majorMinor,
      required this.blockSize,
      required this.device,
      required this.rawSize,
      required this.uuid,
      required this.size,
      required this.used,
      required this.label,
      required this.id,
      required this.fs,
      required this.mapped});

  factory Partition.fromMap(Map<String, dynamic> map) {
    return Partition(
        majorMinor: map[_InxiKeyPartition.majorMinor],
        blockSize: map[_InxiKeyPartition.blockSize],
        device: map[_InxiKeyPartition.device],
        rawSize: map[_InxiKeyPartition.rawSize],
        uuid: map[_InxiKeyPartition.uuid],
        size: map[_InxiKeyPartition.size],
        used: map[_InxiKeyPartition.used],
        label: map[_InxiKeyPartition.label],
        id: map[_InxiKeyPartition.id],
        fs: map[_InxiKeyPartition.fs],
        mapped: map[_InxiKeyPartition.mapped]);
  }

  static Iterable<Partition> fromReport(Map<String, dynamic> reportMap) {
    final partitions = (reportMap["Partition"]! as List)
        .cast<Map<String, dynamic>>()
        .map((p) => Partition.fromMap(p))
        .toList();

    partitions.sort((a, b) {
      final aDeviceExists = a.device != null ? 1 : 0;
      final bDeviceExists = b.device != null ? 1 : 0;
      final deviceExistenceComparison = bDeviceExists.compareTo(aDeviceExists);

      if (deviceExistenceComparison != 0) {
        return deviceExistenceComparison;
      }
      return a.id.compareTo(b.id);
    });

    return partitions; // .sublist(0, min(partitions.length, 5));
  }

  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: "$used ($size)", data: this, label: "$fs ($device)");

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
