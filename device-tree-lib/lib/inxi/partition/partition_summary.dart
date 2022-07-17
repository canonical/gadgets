import 'package:device_tree_lib/inxi/partition/partition.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:device_tree_lib/with_icon.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unicons/unicons.dart';

part 'partition_summary.freezed.dart';
part 'partition_summary.g.dart';

@freezed
class PartitionSummary
    with _$PartitionSummary
    implements TreeNodeRepresentable, WithIcon {
  const PartitionSummary._();

  factory PartitionSummary({required List<Partition> partitions}) =
      _PartitionSummary;

  factory PartitionSummary.fromReport(Map<String, dynamic> report) =>
      PartitionSummary(partitions: Partition.fromReport(report));

  factory PartitionSummary.fromJson(Map<String, dynamic> json) =>
      _$PartitionSummaryFromJson(json);

  @override
  TreeNode treeNodeRepresentation() => TreeNode(id: "Storage", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => partitions;

  @override
  get iconData => UniconsLine.hdd;
}
