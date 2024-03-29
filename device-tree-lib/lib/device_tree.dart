/*
 * Copyright (C) 2022 Canonical Ltd
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:device_tree_lib/inxi/memory/memory_summary.dart';
import 'package:device_tree_lib/inxi/raid/raid.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_tree.freezed.dart';
part 'device_tree.g.dart';

class ReportNotFoundError implements Exception {}

class MissingDeviceReportKeyException implements Exception {
  final String key;
  const MissingDeviceReportKeyException(this.key);
}

class UnexpectedReportFormat implements Exception {
  final dynamic report;
  const UnexpectedReportFormat(this.report);
}

@freezed
class DeviceTree with _$DeviceTree implements TreeNodeRepresentable {
  const DeviceTree._();

  factory DeviceTree(
      {required DeviceInfo info,
      USBSummary? usbSummary,
      required AudioSummary audioSummary,
      BluetoothSummary? bluetoothSummary,
      required BatterySummary batterySummary,
      required CPUSummary cpuSummary,
      required DriveSummary driveSummary,
      required GraphicsSummary graphicsSummary,
      MachineSummary? machineSummary,
      MemorySummary? memorySummary,
      required PartitionSummary partitionSummary,
      required RAIDSummary raidSummary,
      required SystemSummary systemSummary}) = _DeviceTree;

  factory DeviceTree.fromJsonBlob(dynamic blob) {
    return DeviceTree.fromReport(_ensureMap(blob));
  }

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
    final machineSummary = tree.machineSummary?.copyWith(deviceTree: tree);
    return tree.copyWith(machineSummary: machineSummary);
  }

  factory DeviceTree.fromJson(Map<String, dynamic> json) =>
      _$DeviceTreeFromJson(json);

  static Map<String, dynamic> _ensureMap(dynamic rawData) {
    if (rawData is List) {
      final Map<String, dynamic> map = {};
      final rawList = rawData.cast<Map<String, dynamic>>();
      for (final entry in rawList) {
        assert(entry.length == 1);
        map[entry.keys.first] = entry.values.first;
      }
      return map;
    } else if (rawData is Map) {
      return rawData as Map<String, dynamic>;
    }
    throw UnexpectedReportFormat(rawData);
  }

  static Future<DeviceTree> from({required File file}) async {
    final rawData = await json.decode(await file.readAsString());

    // it's either a map or a list.
    // when a list, need to reduce it down to a map.
    return DeviceTree.fromReport(_ensureMap(rawData));
  }

  @override
  TreeNode treeNodeRepresentation() {
    final hostname = systemSummary.kernel.host;
    return TreeNode(id: "device-tree", data: this, label: "Device ($hostname)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [
      [
        CertificationSummary(
            deviceTree: this, status: CertificationStatus.passedWithWarnings)
      ],
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
