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
import 'audio_keys.dart';
import 'audio_device.dart';

part 'pci_audio_device.freezed.dart';
part 'pci_audio_device.g.dart';

@freezed
class PCIAudioDevice with _$PCIAudioDevice implements AudioDevice {
  const PCIAudioDevice._();

  factory PCIAudioDevice(
      {required String name,
      required String driver,
      String? type,
      String? classID,
      required int lanes,
      required int gen,
      required String pcie}) = _PCIAudioDevice;

  factory PCIAudioDevice.fromMap(Map<String, dynamic> map) {
    return PCIAudioDevice(
        name: map[InxiKeyAudio.name],
        driver: map[InxiKeyAudio.driver],
        type: map[InxiKeyAudio.type],
        classID: map[InxiKeyAudio.classID],
        lanes: int.parse(map[InxiKeyAudio.lanes]),
        gen: map[InxiKeyAudio.gen],
        pcie: map[InxiKeyAudio.pcie]);
  }

  factory PCIAudioDevice.fromJson(Map<String, dynamic> json) =>
      _$PCIAudioDeviceFromJson(json);

  static bool representsPCIAudioDevice(Map<String, dynamic> map) {
    return map.keys.any((k) => PCIAudioDevice._expectedKeys.contains(k));
  }

  static final Set<String> _expectedKeys = {
    InxiKeyAudio.lanes,
    InxiKeyAudio.gen,
    InxiKeyAudio.pcie
  };

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: name, data: this, label: "$name ($driver)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
