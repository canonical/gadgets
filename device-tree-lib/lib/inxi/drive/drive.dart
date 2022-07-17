import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'drive_keys.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drive.freezed.dart';
part 'drive.g.dart';

@freezed
class Drive with _$Drive implements TreeNodeRepresentable {
  const Drive._();

  factory Drive(
      {required String id,
      required String blockSize,
      required String vendor,
      required String serial,
      required String type,
      required String scheme,
      required String speed,
      required int lanes,
      required String temperature,
      required String size,
      required String model,
      required String rev,
      required String logical,
      required String majorMinor,
      required String physical}) = _Drive;

  factory Drive.fromMap(Map<String, dynamic> map) {
    return Drive(
        id: map[InxiKeyDrive.id]!,
        blockSize: map[InxiKeyDrive.blockSize]!,
        vendor: map[InxiKeyDrive.vendor]!,
        serial: map[InxiKeyDrive.serial]!,
        type: map[InxiKeyDrive.type]!,
        scheme: map[InxiKeyDrive.scheme]!,
        speed: map[InxiKeyDrive.speed]!,
        lanes: map[InxiKeyDrive.lanes]!,
        temperature: map[InxiKeyDrive.temperature]!,
        size: map[InxiKeyDrive.size]!,
        model: map[InxiKeyDrive.model]!,
        rev: map[InxiKeyDrive.rev]!,
        logical: map[InxiKeyDrive.logical]!,
        majorMinor: map[InxiKeyDrive.majorMinor]!,
        physical: map[InxiKeyDrive.physical]!);
  }

  factory Drive.fromJson(Map<String, dynamic> json) => _$DriveFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: model, data: this, label: "size: $size");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
