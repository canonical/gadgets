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

part 'cpu_core_info.freezed.dart';
part 'cpu_core_info.g.dart';

@freezed
class CPUCoreInfo with _$CPUCoreInfo implements TreeNodeRepresentable {
  const CPUCoreInfo._();

  factory CPUCoreInfo(
      {required int tpc,
      required String l2,
      required int threads,
      required String l1,
      required String smt,
      required int cores,
      required String cache,
      required int cpus,
      required String l3,
      required String description,
      required int? dies}) = _CPUCoreInfo;

  factory CPUCoreInfo.fromMap(Map<String, dynamic> map) => CPUCoreInfo(
      tpc: map['tpc']!,
      l2: map['L2']!,
      threads: map['threads']!,
      l1: map['L1']!,
      smt: map['smt']!,
      cores: map['cores']!,
      cache: map['cache']!,
      cpus: int.parse(map['cpus']!),
      l3: map['L3']!,
      description: map['desc']!,
      dies: map['dies']);

  factory CPUCoreInfo.fromJson(Map<String, dynamic> json) =>
      _$CPUCoreInfoFromJson(json);

  static bool isRepresentation(Map<String, dynamic> map) {
    return map['L1'] != null;
  }

  static bool cpuCoreInfoDetected(Map<String, dynamic> map) {
    return true;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: description,
        label: "$cores cores, $threads threads across $cpus CPUs");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
