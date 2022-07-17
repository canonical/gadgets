import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'memory_keys.dart';

part 'memory_slot_summary.freezed.dart';
part 'memory_slot_summary.g.dart';

@freezed
class MemorySlotSummary
    with _$MemorySlotSummary
    implements TreeNodeRepresentable {
  const MemorySlotSummary._();

  factory MemorySlotSummary(
      {required String note,
      required String maxModuleSize,
      required int slots,
      required String errorCorrection,
      required String capacity,
      required String array}) = _MemorySlotSummary;

  factory MemorySlotSummary.fromMap(Map<String, dynamic> map) =>
      MemorySlotSummary(
          note: map[InxiKeyMemorySlotSummary.note]!,
          maxModuleSize: map[InxiKeyMemorySlotSummary.maxModuleSize]!,
          slots: map[InxiKeyMemorySlotSummary.slots]!,
          errorCorrection: map[InxiKeyMemorySlotSummary.ec]!,
          capacity: map[InxiKeyMemorySlotSummary.capacity]!,
          array: map[InxiKeyMemorySlotSummary.array]);

  factory MemorySlotSummary.fromJson(Map<String, dynamic> json) =>
      _$MemorySlotSummaryFromJson(json);

  static bool isDetectedIn({required Map<String, dynamic> map}) {
    // handles the case of:
    // {RAM Report: ,
    //  missing: Required tool dmidecode not installed. Check --recommends}
    return map["RAM Report"] != null && map["missing"] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "$slots memory slots ($capacity)",
        data: this,
        label: "error correction: $errorCorrection");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
