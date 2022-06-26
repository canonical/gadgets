import 'package:device_tree_lib/src/detail_node.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:collection/collection.dart';

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

class OEMInfo implements TreeNodeRepresentable {
  final String serial;
  final int typeIdentifier;
  final String typeName;
  final String version;
  final String product;
  final String system;

  OEMInfo(this.serial, this.typeIdentifier, this.typeName, this.version,
      this.product, this.system);

  factory OEMInfo.fromMap(Map<String, dynamic> map) {
    return OEMInfo(
        map[_InxiKeyMachine.serial]!,
        map[_InxiKeyMachine.typeIdentifier]!,
        map[_InxiKeyMachine.typeName]!,
        map[_InxiKeyMachine.version]!,
        map[_InxiKeyMachine.product]!,
        map[_InxiKeyMachine.system]!);
  }

  static bool isRepresentation(Map<String, dynamic> map) {
    return map[_InxiKeyMachine.product] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "OEM Information", data: this, label: version);
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
    ];
  }
}

class UEFI implements TreeNodeRepresentable {
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
    return TreeNode(
        id: "UEFI Information", data: this, label: motherboardModel);
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
}

class MachineSummary implements TreeNodeRepresentable {
  final UEFI uefi;
  final OEMInfo? oemInfo;

  MachineSummary(this.uefi, this.oemInfo);

  factory MachineSummary.fromReport(Map<String, dynamic> reportMap) {
    final machineEntries =
        (reportMap['Machine']! as List).cast<Map<String, dynamic>>();

    final oemInfoMapMaybe = machineEntries
        .firstWhereOrNull((element) => OEMInfo.isRepresentation(element));

    final uefi = UEFI.fromMap(
        machineEntries.firstWhere((element) => UEFI.representsUEFI(element)));

    return MachineSummary(uefi,
        oemInfoMapMaybe != null ? OEMInfo.fromMap(oemInfoMapMaybe) : null);
  }

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
    return TreeNode(id: "Computer", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    List<TreeNodeRepresentable> c = [];
    if (oemInfo != null) {
      c.add(oemInfo!);
    }
    c.add(uefi);
    return c;
  }
}
