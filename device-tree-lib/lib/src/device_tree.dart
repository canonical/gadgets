import 'dart:core';
import 'package:device_tree_lib/all.dart';
import 'package:device_tree_lib/src/info.dart';
import 'package:device_tree_lib/src/usb.dart';

class ReportNotFoundError implements Exception {}

class MissingDeviceReportKeyException implements Exception {
  final String key;
  const MissingDeviceReportKeyException(this.key);
}

class InxiKey {
  static final String info = "Info";
  static final String usb = "USB";
}

class DeviceTree {
  final DeviceInfo info;
  final Array<USBDevice> usbDevices;

  const DeviceTree(this.info, this.usbDevices);

  factory DeviceTree.fromMap(Map<String, dynamic> map) {
    Map<String, dynamic>? infoMap = map[InxiKey.info];
    if (infoMap == null) {
      throw MissingDeviceReportKeyException(InxiKey.info);
    }

    Array<Map<String, dynamic>>? usbDeviceMaps = map[InxiKey.usb];
    if (infoMap == null) {
      throw MissingDeviceReportKeyException(InxiKey.info);
    }
    var devices = usbDeviceMaps.map((m) => USBDevice.fromMap(m));

    return DeviceTree(DeviceInfo.fromMap(infoMap), devices);
  }
}
