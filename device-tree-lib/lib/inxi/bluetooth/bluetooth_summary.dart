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

import 'dart:core';

import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unicons/unicons.dart';

import 'bluetooth_link.dart';
import 'bluetooth_chip.dart';
import 'bluetooth_service.dart';

part 'bluetooth_summary.freezed.dart';
part 'bluetooth_summary.g.dart';

@freezed
class BluetoothSummary
    with _$BluetoothSummary
    implements TreeNodeRepresentable, WithIcon {
  const BluetoothSummary._();

  factory BluetoothSummary(
      {required BluetoothChip chip,
      required BluetoothService service,
      required BluetoothLink link}) = _BluetoothSummary;

  factory BluetoothSummary.fromMaps(
          {required Map<String, dynamic> chip,
          required Map<String, dynamic> service,
          required Map<String, dynamic> link}) =>
      BluetoothSummary(
          chip: BluetoothChip.fromMap(chip),
          service: BluetoothService.fromMap(service),
          link: BluetoothLink.fromMap(link));

  factory BluetoothSummary.fromReport(Map<String, dynamic> report) {
    final bluetoothSummaryInfo = report["Bluetooth"]!;

    // TODO: Make this work correctly with _multiple_ bluetooth chips.
    Map<String, dynamic> chipMap = bluetoothSummaryInfo.elementAt(0);
    Map<String, dynamic> serviceMap = bluetoothSummaryInfo.elementAt(1);
    Map<String, dynamic> linkMap = bluetoothSummaryInfo.elementAt(2);

    return BluetoothSummary.fromMaps(
        chip: chipMap, service: serviceMap, link: linkMap);
  }

  factory BluetoothSummary.fromJson(Map<String, dynamic> json) =>
      _$BluetoothSummaryFromJson(json);

  static bool isDetectedIn({required Map<String, dynamic> report}) {
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

  @override
  get iconData => UniconsLine.bluetooth_b;
}
