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

import 'package:device_tree_lib/tree_node_representable.dart';
import 'battery.dart';

part 'peripheral_battery.freezed.dart';
part 'peripheral_battery.g.dart';

@freezed
class PeripheralBattery
    with _$PeripheralBattery
    implements Battery, TreeNodeRepresentable {
  const PeripheralBattery._();

  factory PeripheralBattery(
      {required String status,
      required String serial,
      required String model,
      required String charge,
      required String rechargeable,
      required String device}) = _PeripheralBattery;

  factory PeripheralBattery.fromMap(Map<String, dynamic> map) {
    return PeripheralBattery(
        status: map['status'],
        serial: map['serial'],
        model: map['model'],
        charge: map['charge'],
        rechargeable: map['rechargeable'],
        device: map['Device']);
  }

  factory PeripheralBattery.fromJson(Map<String, dynamic> json) =>
      _$PeripheralBatteryFromJson(json);

  static bool isRepresentation(Map<String, dynamic> map) =>
      map['Device'] != null;

  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: model, data: this, label: "$charge ($status)");

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
