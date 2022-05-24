import 'dart:core';

import 'package:device_tree_lib/src/device_tree.dart';

class InxiKeyBluetooth {
  static final String chipID = 'chip-ID';
  static final String busID = 'bus-ID';
  static final String driver = 'driver';
  static final String version = 'v';
  static final String device = 'Device';
  static final String type = 'type';
  static final String classID = 'class-ID';

  static final String bluetoothService = 'bt-service';
  static final String state = 'state';
  static final String address = 'address';
  static final String rfkID = 'rfk-id';
  static final String hardware = 'hardware';
  static final String id = 'ID';
  static final String rfkBlock = 'rfk-block';
  static final String software = 'software';
  static final String report = 'Report';

  static final String linkPolicy = 'link-policy';
  static final String scoMTU = 'sco-mtu';
  static final String info = 'Info';
  static final String linkMode = 'link-mode';
  static final String aclMTU = 'acl-mtu';
}

class BluetoothSummary {
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
    Map<String, dynamic> chipMap = bluetoothSummaryInfo.elementAt(0);
    Map<String, dynamic> serviceMap = bluetoothSummaryInfo.elementAt(1);
    Map<String, dynamic> linkMap = bluetoothSummaryInfo.elementAt(2);

    return BluetoothSummary.fromMaps(
        chip: chipMap, service: serviceMap, link: linkMap);
  }
}

class BluetoothChip {
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
}

class BluetoothService {
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
}

class BluetoothLink {
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
}

/*
"Bluetooth": [
    {
      "chip-ID": "8087:0aa7",
      "bus-ID": "1-9:4",
      "driver": "btusb",
      "v": "0.8",
      "Device": "Intel Wireless-AC 3168 Bluetooth",
      "type": "USB",
      "class-ID": "e001"
    },
    {
      "bt-service": "enabled,running",
      "state": "down",
      "address": "1C:4D:70:22:81:CE",
      "rfk-id": "0",
      "hardware": "no",
      "ID": "hci0",
      "rfk-block": "",
      "software": "yes",
      "Report": "hciconfig"
    },
    {
      "link-policy": "rswitch sniff",
      "sco-mtu": "96:6",
      "Info": "",
      "link-mode": "peripheral accept",
      "acl-mtu": "1021:4"
    }
  ]
  */