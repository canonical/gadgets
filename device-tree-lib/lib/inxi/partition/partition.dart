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
import 'package:device_tree_lib/inxi/partition/partition_keys.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partition.freezed.dart';
part 'partition.g.dart';

@freezed
class Partition with _$Partition implements TreeNodeRepresentable {
  const Partition._();

  factory Partition(
      {String? majorMinor,
      String? blockSize,
      String? device,
      String? rawSize,
      String? uuid,
      required String size,
      String? used,
      String? label,
      required String id,
      required String fs,
      String? mapped}) = _Partition;

  factory Partition.fromMap(Map<String, dynamic> map) {
    return Partition(
        majorMinor: map[InxiKeyPartition.majorMinor],
        blockSize: map[InxiKeyPartition.blockSize],
        device: map[InxiKeyPartition.device],
        rawSize: map[InxiKeyPartition.rawSize],
        uuid: map[InxiKeyPartition.uuid],
        size: map[InxiKeyPartition.size],
        used: map[InxiKeyPartition.used],
        label: map[InxiKeyPartition.label],
        id: map[InxiKeyPartition.id],
        fs: map[InxiKeyPartition.fs],
        mapped: map[InxiKeyPartition.mapped]);
  }

  static List<Partition> fromReport(Map<String, dynamic> reportMap) {
    final partitions = (reportMap["Partition"]! as List)
        .cast<Map<String, dynamic>>()
        .map((p) => Partition.fromMap(p))
        .toList();

    partitions.sort((a, b) {
      final aDeviceExists = a.device != null ? 1 : 0;
      final bDeviceExists = b.device != null ? 1 : 0;
      final deviceExistenceComparison = bDeviceExists.compareTo(aDeviceExists);

      if (deviceExistenceComparison != 0) {
        return deviceExistenceComparison;
      }
      return a.id.compareTo(b.id);
    });

    return partitions; // .sublist(0, min(partitions.length, 5));
  }

  factory Partition.fromJson(Map<String, dynamic> json) =>
      _$PartitionFromJson(json);

  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: "$used ($size)", data: this, label: "$fs ($device)");

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
