import 'package:device_tree_lib/inxi/memory/memory_keys.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memory_capacity.freezed.dart';
part 'memory_capacity.g.dart';

@freezed
class MemoryCapacity with _$MemoryCapacity implements TreeNodeRepresentable {
  const MemoryCapacity._();

  factory MemoryCapacity(
      {required String total,
      required String used,
      required String ram}) = _MemoryCapacity;

  factory MemoryCapacity.fromMap(Map<String, dynamic> map) {
    return MemoryCapacity(
        total: map[InxiKeyMemoryCapacity.total]!,
        used: map[InxiKeyMemoryCapacity.used]!,
        ram: map[InxiKeyMemoryCapacity.ram]!);
  }

  factory MemoryCapacity.fromJson(Map<String, dynamic> json) =>
      _$MemoryCapacityFromJson(json);

  static bool isDetectedIn({required Map<String, dynamic> map}) =>
      map['total'] != '' && map['used'] != '' && map['ram'] != '';

  @override
  TreeNode treeNodeRepresentation() => TreeNode(
      id: "$used / $total",
      data: this,
      label: "used: $used, total: $total ($ram)");

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
