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

part 'cpu_compiler_flags.freezed.dart';
part 'cpu_compiler_flags.g.dart';

@freezed
class CPUCompilerFlags
    with _$CPUCompilerFlags
    implements TreeNodeRepresentable {
  const CPUCompilerFlags._();

  factory CPUCompilerFlags({required String flags}) = _CPUCompilerFlags;

  factory CPUCompilerFlags.fromMap(Map<String, dynamic> map) =>
      CPUCompilerFlags(flags: map['Flags']);

  factory CPUCompilerFlags.fromJson(Map<String, dynamic> json) =>
      _$CPUCompilerFlagsFromJson(json);

  static bool isRepresentation(Map<String, dynamic> map) {
    return map["Flags"] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "Flags", data: this, label: flags);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
