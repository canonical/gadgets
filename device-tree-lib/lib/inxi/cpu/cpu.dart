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
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu.freezed.dart';
part 'cpu.g.dart';

@freezed
class CPU with _$CPU implements TreeNodeRepresentable {
  const CPU._();

  factory CPU(
      {required String family,
      required int? stepping,
      String? microcode,
      required String model,
      required String modelID,
      required String type,
      required int bits,
      required String architecture,
      String? socket}) = _CPU;

  factory CPU.fromMap(Map<String, dynamic> map) {
    final rawStepping = map['stepping'];
    return CPU(
        family: map['family']!,
        stepping: rawStepping != null && rawStepping != 'N/A'
            ? int.parse(map['stepping']!)
            : null,
        microcode: map['microcode'],
        model: map['model']!,
        modelID: map['model-id']!,
        type: map['type']!,
        bits: map['bits']!,
        architecture: map['arch']!,
        socket: map['socket']);
  }

  factory CPU.fromJson(Map<String, dynamic> json) => _$CPUFromJson(json);

  static bool isRepresentation(Map<String, dynamic> map) {
    return map['model'] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: model, data: this, label: "$modelID ($architecture)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
