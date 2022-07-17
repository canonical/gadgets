import 'package:device_tree_lib/presentation/detail_node.dart';
import 'package:device_tree_lib/inxi/machine/machine_keys.dart';
import 'package:device_tree_lib/with_icon.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'uefi.freezed.dart';
part 'uefi.g.dart';

@freezed
class UEFI with _$UEFI implements TreeNodeRepresentable, WithIcon {
  const UEFI._();

  factory UEFI(
      {required String uefi,
      required String version,
      required String date,
      required String motherboardModel,
      required String serial,
      required String motherboardVendor,
      String? machineType}) = _UEFI;

  factory UEFI.fromMap(Map<String, dynamic> map) => UEFI(
      uefi: map[InxiKeyMachine.uefi]!,
      version: map[InxiKeyMachine.version]!,
      date: map[InxiKeyMachine.date]!,
      motherboardModel: map[InxiKeyMachine.model]!,
      serial: map[InxiKeyMachine.serial]!,
      motherboardVendor: map[InxiKeyMachine.motherboard]!,
      machineType: map[InxiKeyMachine.typeName]);

  factory UEFI.fromJson(Map<String, dynamic> json) => _$UEFIFromJson(json);

  static bool representsUEFI(Map<String, dynamic> map) {
    return map[InxiKeyMachine.uefi] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "UEFI Info", data: this, label: motherboardModel);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [
      [Detail(parent: this, key: "Device Vendor", value: motherboardVendor)],
      [Detail(parent: this, key: "Device Model", value: motherboardModel)],
      [
        Detail(
            parent: this, key: "UEFI Version", value: "$uefi $version ($date)")
      ],
      [Detail(parent: this, key: "Device Serial #", value: serial)],
      machineType != null
          ? [Detail(parent: this, key: "Type", value: machineType)]
          : List<TreeNodeRepresentable>.empty(),
    ].cast<List<TreeNodeRepresentable>>().expand((e) => e);
  }

  @override
  get iconData => Icons.handyman;
}
