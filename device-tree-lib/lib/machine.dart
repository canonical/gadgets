import 'package:device_tree_lib/detail_node.dart';
import 'package:device_tree_lib/with_icon.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'system.dart';
import 'package:unicons/unicons.dart';

import 'device_tree.dart';

class _InxiKeyMachine {
  static const String uefi = 'UEFI';
  static const String version = 'v';
  static const String date = 'date';
  static const String model = 'model';
  static const String serial = 'serial';
  static const String motherboard = 'Mobo';
  static const String typeName = 'Type';
  static const String typeIdentifier = 'type';
  static const String product = 'product';
  static const String system = 'System';
}

class OEMInfo implements TreeNodeRepresentable, WithIcon {
  final String serial;
  final int typeIdentifier;
  final String typeName;
  final String version;
  final String product;
  final String system;

  OEMInfo(
      {required this.serial,
      required this.typeIdentifier,
      required this.typeName,
      required this.version,
      required this.product,
      required this.system});

  factory OEMInfo.fromMap(Map<String, dynamic> map) {
    return OEMInfo(
        serial: map[_InxiKeyMachine.serial]!,
        typeIdentifier: map[_InxiKeyMachine.typeIdentifier]!,
        typeName: map[_InxiKeyMachine.typeName]!,
        version: map[_InxiKeyMachine.version]!,
        product: map[_InxiKeyMachine.product]!,
        system: map[_InxiKeyMachine.system]!);
  }

  static bool isRepresentation(Map<String, dynamic> map) {
    return map[_InxiKeyMachine.product] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "OEM Info", data: this, label: version);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [
      Detail(
          parent: this,
          key: "Device Model",
          value: "$version ($product, $typeName)"),
      Detail(parent: this, key: "Serial", value: serial),
      Detail(parent: this, key: "Vendor", value: system),
      // Detail(parent: this, key: "Type", value: typeName),
      // Detail(parent: this, key: "Product", value: product),
      // Detail(parent: this, key: "Type identifier", value: typeIdentifier),
    ].toList();
  }

  @override
  get iconData => Icons.precision_manufacturing;
}

class UEFI implements TreeNodeRepresentable, WithIcon {
  final String uefi;
  final String version;
  final String date;
  final String motherboardModel;
  final String serial;
  final String motherboardVendor;
  final String? machineType;

  UEFI(this.uefi, this.version, this.date, this.motherboardModel, this.serial,
      this.motherboardVendor, this.machineType);

  factory UEFI.fromMap(Map<String, dynamic> map) {
    return UEFI(
        map[_InxiKeyMachine.uefi]!,
        map[_InxiKeyMachine.version]!,
        map[_InxiKeyMachine.date]!,
        map[_InxiKeyMachine.model]!,
        map[_InxiKeyMachine.serial]!,
        map[_InxiKeyMachine.motherboard]!,
        map[_InxiKeyMachine.typeName]);
  }

  static bool representsUEFI(Map<String, dynamic> map) {
    return map[_InxiKeyMachine.uefi] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "UEFI Info", data: this, label: motherboardModel);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [
      [Detail(parent: this, key: "Device Vendor", value: motherboardVendor)],
      [Detail(parent: this, key: "Device Model", value: motherboardModel)],
      [
        Detail(
            parent: this, key: "UEFI Version", value: "$uefi $version ($date)")
      ],
      [Detail(parent: this, key: "Device Serial #", value: serial)],
      machineType != null
          ? [Detail(parent: this, key: "Type", value: machineType)]
          : List<TreeNodeRepresentable>.empty(),
    ].cast<List<TreeNodeRepresentable>>().expand((e) => e);
  }

  @override
  get iconData => Icons.handyman;
}

class MachineSummary implements TreeNodeRepresentable, WithIcon {
  final DeviceTree? deviceTree;
  final UEFI uefi;
  final OEMInfo? oemInfo;

  MachineSummary({this.deviceTree, required this.uefi, required this.oemInfo});

  factory MachineSummary.fromReport(
      {required Map<String, dynamic> reportMap, DeviceTree? deviceTree}) {
    final machineEntries =
        (reportMap['Machine']! as List).cast<Map<String, dynamic>>();

    final oemInfoMapMaybe = machineEntries
        .firstWhereOrNull((element) => OEMInfo.isRepresentation(element));

    final uefi = UEFI.fromMap(
        machineEntries.firstWhere((element) => UEFI.representsUEFI(element)));

    return MachineSummary(
        deviceTree: deviceTree,
        uefi: uefi,
        oemInfo:
            oemInfoMapMaybe != null ? OEMInfo.fromMap(oemInfoMapMaybe) : null);
  }

  MachineSummary copyWith({DeviceTree? overriddenDeviceTree}) => MachineSummary(
      uefi: uefi, oemInfo: oemInfo, deviceTree: overriddenDeviceTree);

  static bool isDetectedIn({required Map<String, dynamic> report}) {
    final entries = report["Machine"];
    if (entries == null) {
      return false;
    }
    final machineList = (entries as List).cast<Map<String, dynamic>>();
    return machineList.any((element) =>
        OEMInfo.isRepresentation(element) || UEFI.representsUEFI(element));
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "System Info", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    List<TreeNodeRepresentable> c = [];
    if (oemInfo != null) {
      c.add(oemInfo!);
    }
    c.add(uefi);

    final tree = deviceTree;
    if (tree != null) {
      c.add(tree.systemSummary);
    }

    return c;
  }

  @override
  get iconData {
    if (oemInfo?.typeName.toLowerCase() == "laptop" ||
        uefi.machineType?.toLowerCase() == "laptop") {
      return UniconsLine.laptop;
    } else if (oemInfo?.typeName.toLowerCase() == "desktop" ||
        uefi.machineType == "desktop") {
      return UniconsLine.desktop;
    } else if (oemInfo?.typeName.toLowerCase() == "server" ||
        uefi.machineType?.toLowerCase() == "server") {
      return UniconsLine.server;
    } else if (uefi.uefi == "Parallels GmbH.") {
      return UniconsLine.laptop_cloud;
    }
    return UniconsLine.circuit; // TODO: this is a pretty arbitrary fallback...
  }
}
