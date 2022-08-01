/*
 * Copyright (C) 2022 Canonical Ltd
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

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
