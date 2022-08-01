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

import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:device_tree_lib/inxi/battery/no_battery_detected.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:unicons/unicons.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'unexpected_battery_value.dart';

part 'battery_summary.freezed.dart';
part 'battery_summary.g.dart';

@freezed
class BatterySummary
    with _$BatterySummary
    implements TreeNodeRepresentable, WithIcon {
  const BatterySummary._();

  factory BatterySummary(
      {required List<MachineBattery> machineBatteries,
      required List<PeripheralBattery> peripheralBatteries}) = _BatterySummary;

  factory BatterySummary.fromBatteries(Iterable<BatteryLike> batteries) {
    return BatterySummary(
        machineBatteries: batteries.whereType<MachineBattery>().toList(),
        peripheralBatteries: batteries.whereType<PeripheralBattery>().toList());
  }

  factory BatterySummary.fromReport(Map<String, dynamic> report) {
    return BatterySummary.fromBatteries(
        (report["Battery"] as List).cast<Map<String, dynamic>>().map((map) {
      if (MachineBattery.isRepresentation(map)) {
        return MachineBattery.fromMap(map);
      } else if (PeripheralBattery.isRepresentation(map)) {
        return PeripheralBattery.fromMap(map);
      } else if (NoBatteryDetected.isRepresentation(map)) {
        return NoBatteryDetected();
      } else {
        throw UnexpectedBatteryValue(map);
      }
    }));
  }

  List<BatteryLike> get batteries {
    final tehBatteries = List<BatteryLike>.empty(growable: true);
    tehBatteries.addAll(machineBatteries);
    tehBatteries.addAll(peripheralBatteries);

    if (tehBatteries.isEmpty) {
      tehBatteries.add(NoBatteryDetected());
    }
    return tehBatteries;
  }

  factory BatterySummary.fromJson(Map<String, dynamic> json) =>
      _$BatterySummaryFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "Power Management", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() => batteries;

  @override
  get iconData => UniconsLine.bolt_alt;
}
