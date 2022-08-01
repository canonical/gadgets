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

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:unicons/unicons.dart';

import 'package:device_tree_lib/presentation/with_icon.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'battery.dart';

part 'machine_battery.freezed.dart';
part 'machine_battery.g.dart';

@freezed
class MachineBattery
    with _$MachineBattery
    implements Battery, TreeNodeRepresentable, WithIcon {
  const MachineBattery._();

  factory MachineBattery(
      {required String status,
      required String serial,
      required String model,
      required String charge,
      required String type,
      required String id,
      required int cycles,
      required String condition,
      required double min,
      required double volts}) = _MachineBattery;

  factory MachineBattery.fromMap(Map<String, dynamic> map) {
    return MachineBattery(
        status: map['status'],
        serial: map['serial'],
        model: map['model'],
        type: map['type'],
        id: map['ID'],
        charge: map['charge'],
        cycles: int.parse(map['cycles']),
        condition: map['condition'],
        min: double.parse(map['min']),
        volts: double.parse(map['volts']));
  }

  factory MachineBattery.fromJson(Map<String, dynamic> json) =>
      _$MachineBatteryFromJson(json);

  static bool isRepresentation(Map<String, dynamic> map) {
    return map["cycles"] != null;
  }

  @override
  TreeNode treeNodeRepresentation() => TreeNode(
      id: "Device Battery ($type)",
      data: this,
      label: "$charge ($status, $condition)");

  @override
  Iterable<TreeNodeRepresentable> children() => [];

  @override
  get iconData {
    return UniconsSolid.battery_bolt;
  }
}
