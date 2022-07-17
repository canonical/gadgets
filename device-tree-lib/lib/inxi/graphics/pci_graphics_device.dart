import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'graphics_keys.dart';
import 'package:device_tree_lib/tree_node_representable.dart';

part 'pci_graphics_device.freezed.dart';
part 'pci_graphics_device.g.dart';

@freezed
class PCIGraphicsDevice
    with _$PCIGraphicsDevice
    implements TreeNodeRepresentable {
  const PCIGraphicsDevice._();

  factory PCIGraphicsDevice(
      {required String linkMax,
      String? alternativeDrivers,
      required String active,
      String? off,
      required String speed,
      required String pcie,
      required String empty,
      required String driver,
      required String busID,
      required int gen,
      required String vendor,
      required String classID,
      required String version,
      required String name,
      required int lanes,
      required String chipID,
      required String ports}) = _PCIGraphicsDevice;

  factory PCIGraphicsDevice.fromMap(Map<String, dynamic> map) {
    return PCIGraphicsDevice(
        linkMax: map[InxiKeyGraphics.linkMax],
        alternativeDrivers: map[InxiKeyGraphics.alternativeDrivers],
        active: map[InxiKeyGraphics.active],
        off: map[InxiKeyGraphics.off],
        speed: map[InxiKeyGraphics.speed],
        pcie: map[InxiKeyGraphics.pcie],
        empty: map[InxiKeyGraphics.empty],
        driver: map[InxiKeyGraphics.driver],
        busID: map[InxiKeyGraphics.busID],
        gen: map[InxiKeyGraphics.generation],
        vendor: map[InxiKeyGraphics.vendor],
        classID: map[InxiKeyGraphics.classID],
        version: map[InxiKeyGraphics.version],
        name: map[InxiKeyGraphics.name],
        lanes: int.parse(map[InxiKeyGraphics.lanes]),
        chipID: map[InxiKeyGraphics.chipID],
        ports: map[InxiKeyGraphics.ports]);
  }

  factory PCIGraphicsDevice.fromJson(Map<String, dynamic> json) =>
      _$PCIGraphicsDeviceFromJson(json);

  static bool representsPCIGraphicsDevice(Map<String, dynamic> map) {
    return map[InxiKeyGraphics.lanes] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: name, data: this, label: "active:$active, $vendor");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
