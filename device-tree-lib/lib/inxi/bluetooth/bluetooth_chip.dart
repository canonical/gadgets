import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'bluetooth_keys.dart';

part 'bluetooth_chip.freezed.dart';
part 'bluetooth_chip.g.dart';

@freezed
class BluetoothChip with _$BluetoothChip implements TreeNodeRepresentable {
  const BluetoothChip._();

  factory BluetoothChip(
      {required String chipID,
      required String busID,
      required String driver,
      required String version,
      required String device,
      required String type,
      required String classID}) = _BluetoothChip;

  factory BluetoothChip.fromMap(Map<String, dynamic> map) {
    return BluetoothChip(
        chipID: map[InxiKeyBluetooth.chipID]!,
        busID: map[InxiKeyBluetooth.busID]!,
        driver: map[InxiKeyBluetooth.driver]!,
        version: map[InxiKeyBluetooth.version]!,
        device: map[InxiKeyBluetooth.device]!,
        type: map[InxiKeyBluetooth.type]!,
        classID: map[InxiKeyBluetooth.classID]!);
  }

  factory BluetoothChip.fromJson(Map<String, dynamic> json) =>
      _$BluetoothChipFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "bluetooth-chip", data: this, label: "$chipID ($driver)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
