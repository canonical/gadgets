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
import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'machine_keys.dart';

part 'uefi.freezed.dart';
part 'uefi.g.dart';

@freezed
class UEFI with _$UEFI implements TreeNodeRepresentable, WithIcon {
  const UEFI._();

  factory UEFI(
      {required String uefi,
      required String version,
      required String date,
      required String motherboardModel,
      required String serial,
      required String motherboardVendor,
      String? machineType}) = _UEFI;

  factory UEFI.fromMap(Map<String, dynamic> map) => UEFI(
      uefi: map[InxiKeyMachine.uefi]!,
      version: map[InxiKeyMachine.version]!,
      date: map[InxiKeyMachine.date]!,
      motherboardModel: map[InxiKeyMachine.model]!,
      serial: map[InxiKeyMachine.serial]!,
      motherboardVendor: map[InxiKeyMachine.motherboard]!,
      machineType: map[InxiKeyMachine.typeName]);

  factory UEFI.fromJson(Map<String, dynamic> json) => _$UEFIFromJson(json);

  static bool representsUEFI(Map<String, dynamic> map) {
    return map[InxiKeyMachine.uefi] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "UEFI Info", data: this, label: motherboardModel);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [
      [Detail(parent: this, key: "Device Vendor", value: motherboardVendor)],
      [Detail(parent: this, key: "Device Model", value: motherboardModel)],
      [
        Detail(
            parent: this, key: "UEFI Version", value: "$uefi $version ($date)")
      ],
      [Detail(parent: this, key: "Device Serial #", value: serial)],
      machineType != null
          ? [Detail(parent: this, key: "Type", value: machineType)]
          : List<TreeNodeRepresentable>.empty(),
    ].cast<List<TreeNodeRepresentable>>().expand((e) => e);
  }

  @override
  get iconData => Icons.handyman;
}
