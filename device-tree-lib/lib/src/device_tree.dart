import 'dart:core';
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
      this.info,
      this.usbSummary,
      this.audioSummary,
      this.bluetoothSummary,
      this.cpuSummary,
      this.driveSummary,
      this.graphicsSummary,
      this.machineSummary,
      this.memorySummary,
      this.partitionSummary,
      this.raidSummary,
      this.systemSummary);

  factory DeviceTree.fromReport(Map<String, List<Map<String, dynamic>>> map) {
    return DeviceTree(
        DeviceInfo.fromReport(map),
        USBSummary.fromReport(map),
        AudioSummary.fromReport(map),
        BluetoothSummary.fromReport(map),
        CPUSummary.fromReport(map),
        DriveSummary.fromReport(map),
        GraphicsSummary.fromReport(map),
        MachineSummary.fromReport(map),
        MemorySummary.fromReport(map),
        PartitionSummary.fromReport(map),
        RAIDSummary.fromReport(map),
        SystemSummary.fromReport(map));
  }
}
