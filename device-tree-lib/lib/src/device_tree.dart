import 'dart:core';
import 'dart:io';
import 'dart:convert';

import 'package:device_tree_lib/all.dart';
import 'package:device_tree_lib/src/drive.dart';
import 'package:device_tree_lib/src/machine.dart';
import 'package:device_tree_lib/src/memory.dart';
import 'package:device_tree_lib/src/raid.dart';

class ReportNotFoundError implements Exception {}

class MissingDeviceReportKeyException implements Exception {
  final String key;
  const MissingDeviceReportKeyException(this.key);
}

class DeviceTree {
  final DeviceInfo info;
  final USBSummary usbSummary;
  final AudioSummary audioSummary;
  final BluetoothSummary bluetoothSummary;
  final CPUSummary cpuSummary;
  final DriveSummary driveSummary;
  final GraphicsSummary graphicsSummary;
  final MachineSummary machineSummary;
  final MemorySummary memorySummary;
  final PartitionSummary partitionSummary;
  final RAIDSummary raidSummary;
  final SystemSummary systemSummary;

  const DeviceTree(
      {required this.info,
      required this.usbSummary,
      required this.audioSummary,
      required this.bluetoothSummary,
      required this.cpuSummary,
      required this.driveSummary,
      required this.graphicsSummary,
      required this.machineSummary,
      required this.memorySummary,
      required this.partitionSummary,
      required this.raidSummary,
      required this.systemSummary});

  factory DeviceTree.fromReport(Map<String, dynamic> map) {
    return DeviceTree(
        info: DeviceInfo.fromReport(map),
        usbSummary: USBSummary.fromReport(map),
        audioSummary: AudioSummary.fromReport(map),
        bluetoothSummary: BluetoothSummary.fromReport(map),
        cpuSummary: CPUSummary.fromReport(map),
        driveSummary: DriveSummary.fromReport(map),
        graphicsSummary: GraphicsSummary.fromReport(map),
        machineSummary: MachineSummary.fromReport(map),
        memorySummary: MemorySummary.fromReport(map),
        partitionSummary: PartitionSummary.fromReport(map),
        raidSummary: RAIDSummary.fromReport(map),
        systemSummary: SystemSummary.fromReport(map));
  }

  static Future<DeviceTree> from({required File file}) async {
    Map<String, dynamic> map = await json.decode(await file.readAsString());
    return DeviceTree.fromReport(map);
  }
}
