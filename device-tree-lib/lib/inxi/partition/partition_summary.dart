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

import 'package:device_tree_lib/inxi/partition/partition.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:device_tree_lib/presentation/with_icon.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unicons/unicons.dart';

part 'partition_summary.freezed.dart';
part 'partition_summary.g.dart';

@freezed
class PartitionSummary
    with _$PartitionSummary
    implements TreeNodeRepresentable, WithIcon {
  const PartitionSummary._();

  factory PartitionSummary({required List<Partition> partitions}) =
      _PartitionSummary;

  factory PartitionSummary.fromReport(Map<String, dynamic> report) =>
      PartitionSummary(partitions: Partition.fromReport(report));

  factory PartitionSummary.fromJson(Map<String, dynamic> json) =>
      _$PartitionSummaryFromJson(json);

  @override
  TreeNode treeNodeRepresentation() => TreeNode(id: "Storage", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => partitions;

  @override
  get iconData => UniconsLine.hdd;
}
