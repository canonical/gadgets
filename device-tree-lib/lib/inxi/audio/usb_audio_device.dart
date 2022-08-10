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

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:device_tree_lib/tree_node_representable.dart';

import 'audio_device.dart';
import 'audio_keys.dart';

part 'usb_audio_device.freezed.dart';
part 'usb_audio_device.g.dart';

@freezed
class USBAudioDevice with _$USBAudioDevice implements AudioDevice {
  const USBAudioDevice._();

  factory USBAudioDevice(
      {required String name,
      required String driver,
      required String type,
      String? classID,
      String? version,
      String? vendor,
      String? speed,
      String? busID,
      String? chipID}) = _USBAudioDevice;

  factory USBAudioDevice.fromMap(Map<String, dynamic> map) {
    return USBAudioDevice(
        name: map[InxiKeyAudio.name],
        driver: map[InxiKeyAudio.driver],
        type: map[InxiKeyAudio.type],
        classID: map[InxiKeyAudio.classID],
        version: map[InxiKeyAudio.version],
        vendor: map[InxiKeyAudio.vendor],
        speed: map[InxiKeyAudio.speed],
        busID: map[InxiKeyAudio.busID],
        chipID: map[InxiKeyAudio.chipID]);
  }

  factory USBAudioDevice.fromJson(Map<String, dynamic> json) =>
      _$USBAudioDeviceFromJson(json);

  static bool representsUSBAudioDevice(Map<String, dynamic> map) {
    return map[InxiKeyAudio.type] == 'USB';
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "usb-audio-device-$name-$driver-$busID",
        data: this,
        label: "$name ($driver)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
