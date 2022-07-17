import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'bluetooth_keys.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bluetooth_service.freezed.dart';
part 'bluetooth_service.g.dart';

@freezed
class BluetoothService
    with _$BluetoothService
    implements TreeNodeRepresentable {
  const BluetoothService._();

  factory BluetoothService(
      {required String bluetoothService,
      required String state,
      required String address,
      required String rfkID,
      required String hardware,
      required String id,
      required String rfkBlock,
      required String software,
      required String report}) = _BluetoothService;

  factory BluetoothService.fromMap(Map<String, dynamic> map) =>
      BluetoothService(
          bluetoothService: map[InxiKeyBluetooth.bluetoothService]!,
          state: map[InxiKeyBluetooth.state]!,
          address: map[InxiKeyBluetooth.address]!,
          rfkID: map[InxiKeyBluetooth.rfkID]!,
          hardware: map[InxiKeyBluetooth.hardware]!,
          id: map[InxiKeyBluetooth.id]!,
          rfkBlock: map[InxiKeyBluetooth.rfkBlock]!,
          software: map[InxiKeyBluetooth.software]!,
          report: map[InxiKeyBluetooth.report]!);

  factory BluetoothService.fromJson(Map<String, dynamic> json) =>
      _$BluetoothServiceFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: id,
        data: this,
        label: "Bluetooth service status: $state (address: $address)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
