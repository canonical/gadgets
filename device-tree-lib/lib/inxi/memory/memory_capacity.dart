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

import 'package:device_tree_lib/inxi/memory/memory_keys.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'memory_capacity.freezed.dart';
part 'memory_capacity.g.dart';

@freezed
class MemoryCapacity with _$MemoryCapacity implements TreeNodeRepresentable {
  const MemoryCapacity._();

  factory MemoryCapacity(
      {required String total,
      required String used,
      required String ram}) = _MemoryCapacity;

  factory MemoryCapacity.fromMap(Map<String, dynamic> map) {
    return MemoryCapacity(
        total: map[InxiKeyMemoryCapacity.total]!,
        used: map[InxiKeyMemoryCapacity.used]!,
        ram: map[InxiKeyMemoryCapacity.ram]!);
  }

  factory MemoryCapacity.fromJson(Map<String, dynamic> json) =>
      _$MemoryCapacityFromJson(json);

  static bool isDetectedIn({required Map<String, dynamic> map}) =>
      map['total'] != '' && map['used'] != '' && map['ram'] != '';

  @override
  TreeNode treeNodeRepresentation() => TreeNode(
      id: "$used / $total",
      data: this,
      label: "used: $used, total: $total ($ram)");

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
