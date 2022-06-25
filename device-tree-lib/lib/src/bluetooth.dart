import 'dart:core';

import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

class InxiKeyBluetooth {
  static const String chipID = 'chip-ID';
  static const String busID = 'bus-ID';
  static const String driver = 'driver';
  static const String version = 'v';
  static const String device = 'Device';
  static const String type = 'type';
  static const String classID = 'class-ID';

  static const String bluetoothService = 'bt-service';
  static const String state = 'state';
  static const String address = 'address';
  static const String rfkID = 'rfk-id';
  static const String hardware = 'hardware';
  static const String id = 'ID';
  static const String rfkBlock = 'rfk-block';
  static const String software = 'software';
  static const String report = 'Report';

  static const String linkPolicy = 'link-policy';
  static const String scoMTU = 'sco-mtu';
  static const String info = 'Info';
  static const String linkMode = 'link-mode';
  static const String aclMTU = 'acl-mtu';
}

class BluetoothSummary implements TreeNodeRepresentable {
  final BluetoothChip chip;
  final BluetoothService service;
  final BluetoothLink link;

  BluetoothSummary(this.chip, this.service, this.link);

  factory BluetoothSummary.fromMaps(
      {required Map<String, dynamic> chip,
      required Map<String, dynamic> service,
      required Map<String, dynamic> link}) {
    return BluetoothSummary(BluetoothChip.fromMap(chip),
        BluetoothService.fromMap(service), BluetoothLink.fromMap(link));
  }

  factory BluetoothSummary.fromReport(Map<String, dynamic> report) {
    final bluetoothSummaryInfo = report["Bluetooth"]!;

    // TODO: Make this work correctly with _multiple_ bluetooth chips.
    Map<String, dynamic> chipMap = bluetoothSummaryInfo.elementAt(0);
    Map<String, dynamic> serviceMap = bluetoothSummaryInfo.elementAt(1);
    Map<String, dynamic> linkMap = bluetoothSummaryInfo.elementAt(2);

    return BluetoothSummary.fromMaps(
        chip: chipMap, service: serviceMap, link: linkMap);
  }

  static bool bluetoothDetectedInReport(Map<String, dynamic> report) {
    final bluetoothEntries =
        (report["Bluetooth"] as List).cast<Map<String, dynamic>>();
    if (bluetoothEntries.length == 1 &&
        bluetoothEntries.first["Message"] == "No bluetooth data found.") {
      return false;
    }
    return bluetoothEntries.length >=
        3; // at least one combo of chip, service, link needed.
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "Bluetooth", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [service, chip, link];
  }
}

class BluetoothChip implements TreeNodeRepresentable {
  final String chipID;
  final String busID;
  final String driver;
  final String version;
  final String device;
  final String type;
  final String classID;

  BluetoothChip(this.chipID, this.busID, this.driver, this.version, this.device,
      this.type, this.classID);

  factory BluetoothChip.fromMap(Map<String, dynamic> map) {
    return BluetoothChip(
        map[InxiKeyBluetooth.chipID]!,
        map[InxiKeyBluetooth.busID]!,
        map[InxiKeyBluetooth.driver]!,
        map[InxiKeyBluetooth.version]!,
        map[InxiKeyBluetooth.device]!,
        map[InxiKeyBluetooth.type]!,
        map[InxiKeyBluetooth.classID]!);
  }

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

class BluetoothService implements TreeNodeRepresentable {
  final String bluetoothService;
  final String state;
  final String address;
  final String rfkID;
  final String hardware;
  final String id;
  final String rfkBlock;
  final String software;
  final String report;

  BluetoothService(this.bluetoothService, this.state, this.address, this.rfkID,
      this.hardware, this.id, this.rfkBlock, this.software, this.report);

  factory BluetoothService.fromMap(Map<String, dynamic> map) {
    return BluetoothService(
        map[InxiKeyBluetooth.bluetoothService]!,
        map[InxiKeyBluetooth.state]!,
        map[InxiKeyBluetooth.address]!,
        map[InxiKeyBluetooth.rfkID]!,
        map[InxiKeyBluetooth.hardware]!,
        map[InxiKeyBluetooth.id]!,
        map[InxiKeyBluetooth.rfkBlock]!,
        map[InxiKeyBluetooth.software]!,
        map[InxiKeyBluetooth.report]!);
  }

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

class BluetoothLink implements TreeNodeRepresentable {
  final String linkPolicy;
  final String scoMTU;
  final String info;
  final String linkMode;
  final String aclMTU;

  BluetoothLink(
      this.linkPolicy, this.scoMTU, this.info, this.linkMode, this.aclMTU);

  factory BluetoothLink.fromMap(Map<String, dynamic> map) {
    return BluetoothLink(
        map[InxiKeyBluetooth.linkPolicy]!,
        map[InxiKeyBluetooth.scoMTU]!,
        map[InxiKeyBluetooth.info]!,
        map[InxiKeyBluetooth.linkMode]!,
        map[InxiKeyBluetooth.aclMTU]!);
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "bluetooth-link",
        data: this,
        label:
            "Link mode: $linkMode, policy: $linkPolicy, sco-mtu: $scoMTU, acl-mtu: $aclMTU");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
