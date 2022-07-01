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

class UnexpectedReportFormat implements Exception {
  final dynamic report;
  const UnexpectedReportFormat(this.report);
}

class DeviceTree implements TreeNodeRepresentable {
  final DeviceInfo info;
  final USBSummary? usbSummary;
  final AudioSummary audioSummary;
  final BluetoothSummary? bluetoothSummary;
  final BatterySummary batterySummary;
  final CPUSummary cpuSummary;
  final DriveSummary driveSummary;
  final GraphicsSummary graphicsSummary;
  final MachineSummary? machineSummary;
  final MemorySummary? memorySummary;
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
    final tree = DeviceTree(
        info: DeviceInfo.fromReport(map),
        usbSummary: USBSummary.isDetectedIn(report: map)
            ? USBSummary.fromReport(map)
            : null,
        audioSummary: AudioSummary.fromReport(map),
        bluetoothSummary: BluetoothSummary.isDetectedIn(report: map)
            ? BluetoothSummary.fromReport(map)
            : null,
        batterySummary: BatterySummary.fromReport(map),
        driveSummary: DriveSummary.fromReport(map),
        cpuSummary: CPUSummary.fromReport(map),
        graphicsSummary: GraphicsSummary.fromReport(map),
        machineSummary: MachineSummary.isDetectedIn(report: map)
            ? MachineSummary.fromReport(reportMap: map)
            : null,
        memorySummary: MemorySummary.isDetectedIn(report: map)
            ? MemorySummary.fromReport(map)
            : null,
        partitionSummary: PartitionSummary.fromReport(map),
        raidSummary: RAIDSummary.fromReport(map),
        systemSummary: SystemSummary.fromReport(map));

    // FIXME: This is pretty horrid.
    final machineSummary =
        tree.machineSummary?.copyWith(overriddenDeviceTree: tree);
    return tree.copyWith(overriddenMachineSummary: machineSummary);
  }

  DeviceTree copyWith({MachineSummary? overriddenMachineSummary}) {
    return DeviceTree(
        info: info,
        usbSummary: usbSummary,
        audioSummary: audioSummary,
        bluetoothSummary: bluetoothSummary,
        batterySummary: batterySummary,
        cpuSummary: cpuSummary,
        driveSummary: driveSummary,
        graphicsSummary: graphicsSummary,
        machineSummary: overriddenMachineSummary, // is overridden
        memorySummary: memorySummary,
        partitionSummary: partitionSummary,
        raidSummary: raidSummary,
        systemSummary: systemSummary);
  }

  static Future<DeviceTree> from({required File file}) async {
    final rawData = await json.decode(await file.readAsString());

    // it's either a map or a list.
    // when a list, need to reduce it down to a map.
    if (rawData is List) {
      final Map<String, dynamic> map = {};
      final rawList = rawData.cast<Map<String, dynamic>>();
      for (final entry in rawList) {
        assert(entry.length == 1);
        map[entry.keys.first] = entry.values.first;
      }
      return DeviceTree.fromReport(map);
    } else if (rawData is Map) {
      return DeviceTree.fromReport(rawData as Map<String, dynamic>);
    }
    throw UnexpectedReportFormat(rawData);
  }

  @override
  TreeNode treeNodeRepresentation() {
    final hostname = systemSummary.kernel.host;
    return TreeNode(id: "device-tree", data: this, label: "Device ($hostname)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [
      machineSummary != null
          ? [machineSummary!]
          : List<TreeNodeRepresentable>.empty(),
      // [systemSummary], // presented under machine summary
      // [info], // doesn't carry anything very useful beyond sys summary above.
      [batterySummary],
      memorySummary != null
          ? [memorySummary!]
          : List<TreeNodeRepresentable>.empty(),
      [partitionSummary],
      [cpuSummary],
      raidSummary.volumes.isNotEmpty
          ? [raidSummary]
          : List<TreeNodeRepresentable>.empty(),
      [graphicsSummary],
      usbSummary != null ? [usbSummary!] : List<TreeNodeRepresentable>.empty(),
      [audioSummary],
      bluetoothSummary != null
          ? [bluetoothSummary!]
          : List<TreeNodeRepresentable>.empty()
    ].expand((e) => e);
  }
}
