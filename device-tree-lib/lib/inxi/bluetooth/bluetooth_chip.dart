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
