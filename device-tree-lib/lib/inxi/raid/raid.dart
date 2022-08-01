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
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unicons/unicons.dart';

part 'raid.freezed.dart';
part 'raid.g.dart';

@freezed
class RAIDSummary
    with _$RAIDSummary
    implements TreeNodeRepresentable, WithIcon {
  const RAIDSummary._();

  factory RAIDSummary({required List<RAID> volumes}) = _RAIDSummary;

  factory RAIDSummary.fromReport(Map<String, dynamic> report) {
    final raidMaps = (report['RAID']! as List).cast<Map<String, dynamic>>();

    // TODO: Detect RAID volumes in a more sophisticated way.
    // filtering by count <= 2 removes reports of no RAID:
    // { "Message": "No RAID data found." }
    // ... and header entries like
    // { "Online": "N/A", "Components": "" }
    return RAIDSummary(
        volumes: raidMaps
            .where((e) => e.length > 2)
            .map((e) => RAID.fromMap(e))
            .toList());
  }

  factory RAIDSummary.fromJson(Map<String, dynamic> json) =>
      _$RAIDSummaryFromJson(json);

  @override
  TreeNode treeNodeRepresentation() => TreeNode(id: "RAID", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => volumes;

  @override
  get iconData => UniconsLine.server_alt;
}

@freezed
class RAID with _$RAID implements TreeNodeRepresentable {
  const RAID._();

  factory RAID(
      {required String free,
      required String status,
      required String level,
      required String device,
      required String allocated,
      required String size,
      required String type}) = _RAID;

  factory RAID.fromMap(Map<String, dynamic> map) => RAID(
      free: map['free'],
      status: map['status'],
      level: map['level'],
      device: map['Device'],
      allocated: map['allocated'],
      size: map['size'],
      type: map['type']);

  factory RAID.fromJson(Map<String, dynamic> json) => _$RAIDFromJson(json);

  @override
  TreeNode treeNodeRepresentation() => TreeNode(
      id: "$device ($type)",
      data: this,
      label: "$allocated out of allocated $free, total size: $size ($status)");

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
