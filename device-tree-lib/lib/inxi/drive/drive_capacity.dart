import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'drive_keys.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'drive_capacity.freezed.dart';
part 'drive_capacity.g.dart';

@freezed
class DriveCapacity with _$DriveCapacity implements TreeNodeRepresentable {
  const DriveCapacity._();

  factory DriveCapacity({required String total, required String used}) =
      _DriveCapacity;
  factory DriveCapacity.fromMap(Map<String, dynamic> map) {
    return DriveCapacity(
        total: map[InxiKeyDrive.total]!, used: map[InxiKeyDrive.used]!);
  }

  factory DriveCapacity.fromJson(Map<String, dynamic> json) =>
      _$DriveCapacityFromJson(json);

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
