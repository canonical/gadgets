import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:device_tree_lib/all.dart';
import 'package:device_tree_lib/src/battery.dart';
import 'package:device_tree_lib/src/drive.dart';
import 'package:device_tree_lib/src/machine.dart';
import 'package:device_tree_lib/src/memory.dart';
import 'package:device_tree_lib/src/raid.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

class ReportNotFoundError implements Exception {}

class MissingDeviceReportKeyException implements Exception {
  final String key;
  const MissingDeviceReportKeyException(this.key);
}

class DeviceTree implements TreeNodeRepresentable {
  final DeviceInfo info;
  final USBSummary usbSummary;
  final AudioSummary audioSummary;
  final BluetoothSummary? bluetoothSummary;
  final BatterySummary batterySummary;
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
      required this.batterySummary,
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
        bluetoothSummary: BluetoothSummary.bluetoothDetectedInReport(map)
            ? BluetoothSummary.fromReport(map)
            : null,
        batterySummary: BatterySummary.fromReport(map),
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

  @override
  TreeNode treeNodeRepresentation() {
    final hostname = systemSummary.kernel.host;
    return TreeNode(id: "device-tree", data: this, label: "Device ($hostname)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [
      [machineSummary],
      [systemSummary],
      [info],
      [batterySummary],
      [memorySummary],
      [cpuSummary],
      [partitionSummary],
      [raidSummary],
      [graphicsSummary],
      [usbSummary],
      [audioSummary],
      bluetoothSummary != null ? [bluetoothSummary!] : []
    ]
        .cast<List<TreeNodeRepresentable>>()
        .expand((e) => e)
        .cast<TreeNodeRepresentable>();
  }
}
