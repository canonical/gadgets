import 'package:device_tree_lib/all.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter/widgets.dart';

class RAIDSummary implements TreeNodeRepresentable, WithIcon {
  Iterable<RAID> volumes;

  RAIDSummary(this.volumes);

  factory RAIDSummary.fromReport(Map<String, dynamic> report) {
    final raidMaps = (report['RAID']! as List).cast<Map<String, dynamic>>();

    // TODO: Detect RAID volumes in a more sophisticated way.
    // filtering by count <= 2 removes reports of no RAID:
    // { "Message": "No RAID data found." }
    // ... and header entries like
    // { "Online": "N/A", "Components": "" }
    return RAIDSummary(
        raidMaps.where((e) => e.length > 2).map((e) => RAID.fromMap(e)));
  }

  @override
  TreeNode treeNodeRepresentation() => TreeNode(id: "RAID", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => volumes;

  @override
  get iconData => UniconsLine.server_alt;
}

class RAID implements TreeNodeRepresentable {
  final String free;
  final String status;
  final String level;
  final String device;
  final String allocated;
  final String size;
  final String type;

  RAID(this.free, this.status, this.level, this.device, this.allocated,
      this.size, this.type);

  factory RAID.fromMap(Map<String, dynamic> map) {
    return RAID(map['free'], map['status'], map['level'], map['Device'],
        map['allocated'], map['size'], map['type']);
  }

  @override
  TreeNode treeNodeRepresentation() => TreeNode(
      id: "$device ($type)",
      data: this,
      label: "$allocated out of allocated $free, total size: $size ($status)");

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
