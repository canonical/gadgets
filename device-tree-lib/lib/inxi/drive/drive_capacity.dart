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

import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'drive_keys.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'drive_capacity.freezed.dart';
part 'drive_capacity.g.dart';

@freezed
class DriveCapacity with _$DriveCapacity implements TreeNodeRepresentable {
  const DriveCapacity._();

  factory DriveCapacity({required String total, required String used}) =
      _DriveCapacity;
  factory DriveCapacity.fromMap(Map<String, dynamic> map) {
    return DriveCapacity(
        total: map[InxiKeyDrive.total]!, used: map[InxiKeyDrive.used]!);
  }

  factory DriveCapacity.fromJson(Map<String, dynamic> json) =>
      _$DriveCapacityFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "Drive capacity", data: this, label: "used: $used, total: $total");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
