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

import 'graphics_keys.dart';

part 'usb_graphics_device.freezed.dart';
part 'usb_graphics_device.g.dart';

@freezed
class USBGraphicsDevice
    with _$USBGraphicsDevice
    implements TreeNodeRepresentable {
  const USBGraphicsDevice._();

  factory USBGraphicsDevice(
      {required String driver,
      required String name,
      required String chipID,
      required String busID,
      required String serial,
      required String classID,
      required String type}) = _USBGraphicsDevice;

  factory USBGraphicsDevice.fromMap(Map<String, dynamic> map) {
    return USBGraphicsDevice(
        driver: map[InxiKeyGraphics.driver],
        name: map[InxiKeyGraphics.name],
        chipID: map[InxiKeyGraphics.chipID],
        busID: map[InxiKeyGraphics.busID],
        serial: map[InxiKeyGraphics.serial],
        classID: map[InxiKeyGraphics.classID],
        type: map[InxiKeyGraphics.type]);
  }

  factory USBGraphicsDevice.fromJson(Map<String, dynamic> json) =>
      _$USBGraphicsDeviceFromJson(json);

  static bool representsUSBGraphicsDevice(Map<String, dynamic> map) {
    return map[InxiKeyGraphics.type] == "USB";
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: name, data: this, label: "type: $type (driver: $driver)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
