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

import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'drive_keys.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'drive.freezed.dart';
part 'drive.g.dart';

@freezed
class Drive with _$Drive implements TreeNodeRepresentable {
  const Drive._();

  factory Drive(
      {required String id,
      required String blockSize,
      String? vendor,
      required String serial,
      required String type,
      required String scheme,
      required String speed,
      int? lanes,
      String? temperature,
      required String size,
      required String model,
      required String rev,
      required String logical,
      required String majorMinor,
      required String physical}) = _Drive;

  factory Drive.fromMap(Map<String, dynamic> map) {
    return Drive(
        id: map[InxiKeyDrive.id]!,
        blockSize: map[InxiKeyDrive.blockSize]!,
        vendor: map[InxiKeyDrive.vendor],
        serial: map[InxiKeyDrive.serial]!,
        type: map[InxiKeyDrive.type]!,
        scheme: map[InxiKeyDrive.scheme]!,
        speed: map[InxiKeyDrive.speed]!,
        lanes: map[InxiKeyDrive.lanes],
        temperature: map[InxiKeyDrive.temperature],
        size: map[InxiKeyDrive.size]!,
        model: map[InxiKeyDrive.model]!,
        rev: map[InxiKeyDrive.rev]!,
        logical: map[InxiKeyDrive.logical]!,
        majorMinor: map[InxiKeyDrive.majorMinor]!,
        physical: map[InxiKeyDrive.physical]!);
  }

  factory Drive.fromJson(Map<String, dynamic> json) => _$DriveFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: model, data: this, label: "size: $size");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
