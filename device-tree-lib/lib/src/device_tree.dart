import 'dart:core';
import 'package:device_tree_lib/src/info.dart';

class ReportNotFoundError implements Exception {}

class MissingDeviceReportKeyException implements Exception {
  final String key;
  const MissingDeviceReportKeyException(this.key);
}

class InxiKey {
  static final String info = "Info";
}

class DeviceTree {
  final DeviceInfo info;

  const DeviceTree(this.info);

  factory DeviceTree.fromMap(Map<String, dynamic> map) {
    Map<String, dynamic>? infoMap = map[InxiKey.info];
    if (infoMap == null) {
      throw MissingDeviceReportKeyException(InxiKey.info);
    }
    return DeviceTree(DeviceInfo.fromMap(infoMap));
  }
}
