import 'package:device_tree_lib/presentation/detail_node.dart';
import 'package:device_tree_lib/presentation/with_icon.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../system/system.dart';
import 'package:unicons/unicons.dart';

import '../../device_tree.dart';
import 'machine_keys.dart';

part 'oem_info.freezed.dart';
part 'oem_info.g.dart';

@freezed
class OEMInfo with _$OEMInfo implements TreeNodeRepresentable, WithIcon {
  const OEMInfo._();

  factory OEMInfo(
      {required String serial,
      required int typeIdentifier,
      required String typeName,
      required String version,
      required String product,
      required String system}) = _OEMInfo;

  factory OEMInfo.fromMap(Map<String, dynamic> map) => OEMInfo(
      serial: map[InxiKeyMachine.serial]!,
      typeIdentifier: map[InxiKeyMachine.typeIdentifier]!,
      typeName: map[InxiKeyMachine.typeName]!,
      version: map[InxiKeyMachine.version]!,
      product: map[InxiKeyMachine.product]!,
      system: map[InxiKeyMachine.system]!);

  factory OEMInfo.fromJson(Map<String, dynamic> json) =>
      _$OEMInfoFromJson(json);

  static bool isRepresentation(Map<String, dynamic> map) {
    return map[InxiKeyMachine.product] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "OEM Info", data: this, label: version);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [
      Detail(
          parent: this,
          key: "Device Model",
          value: "$version ($product, $typeName)"),
      Detail(parent: this, key: "Serial", value: serial),
      Detail(parent: this, key: "Vendor", value: system),
      // Detail(parent: this, key: "Type", value: typeName),
      // Detail(parent: this, key: "Product", value: product),
      // Detail(parent: this, key: "Type identifier", value: typeIdentifier),
    ].toList();
  }

  @override
  get iconData => Icons.precision_manufacturing;
}
