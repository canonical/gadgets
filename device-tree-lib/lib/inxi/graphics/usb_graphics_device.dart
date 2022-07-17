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
    return map[InxiKeyGraphics.serial] != null;
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
