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
      required String classID,
      String? version,
      String? vendor,
      String? speed,
      required String busID,
      required String chipID}) = _USBAudioDevice;

  factory USBAudioDevice.fromMap(Map<String, dynamic> map) {
    return USBAudioDevice(
        name: map[InxiKeyAudio.name],
        driver: map[InxiKeyAudio.driver],
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
