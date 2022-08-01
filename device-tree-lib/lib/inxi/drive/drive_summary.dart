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

import 'drive.dart';
import 'drive_capacity.dart';
import 'drive_keys.dart';

part 'drive_summary.freezed.dart';
part 'drive_summary.g.dart';

@freezed
class DriveSummary with _$DriveSummary implements TreeNodeRepresentable {
  const DriveSummary._();

  factory DriveSummary(
      {required DriveCapacity capacity,
      required List<Drive> drives}) = _DriveSummary;

  factory DriveSummary.fromReport(Map<String, dynamic> reportMap) {
    final maps = (reportMap["Drives"]! as List).cast<Map<String, dynamic>>();
    final capacity = DriveCapacity.fromMap(
        maps.firstWhere((element) => element[InxiKeyDrive.total] != null));
    final drives = maps
        .where((element) => element[InxiKeyDrive.id] != null)
        .map((d) => Drive.fromMap(d))
        .toList();

    return DriveSummary(capacity: capacity, drives: drives);
  }

  factory DriveSummary.fromJson(Map<String, dynamic> json) =>
      _$DriveSummaryFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "Drives", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    List<List<TreeNodeRepresentable>> childList = [
      [capacity],
      drives.toList()
    ];

    return childList.expand((element) => element);
  }
}
