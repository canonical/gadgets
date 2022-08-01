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

import 'package:collection/collection.dart';
import 'package:device_tree_lib/device_tree.dart';
import 'package:device_tree_lib/inxi/machine/oem_info.dart';
import 'package:device_tree_lib/inxi/machine/uefi.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:device_tree_lib/presentation/with_icon.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unicons/unicons.dart';

part 'machine_summary.freezed.dart';
part 'machine_summary.g.dart';

@freezed
class MachineSummary
    with _$MachineSummary
    implements TreeNodeRepresentable, WithIcon {
  const MachineSummary._();

  factory MachineSummary(
      {DeviceTree? deviceTree,
      required UEFI uefi,
      OEMInfo? oemInfo}) = _MachineSummary;

  factory MachineSummary.fromReport(
      {required Map<String, dynamic> reportMap, DeviceTree? deviceTree}) {
    final machineEntries =
        (reportMap['Machine']! as List).cast<Map<String, dynamic>>();

    final oemInfoMapMaybe = machineEntries
        .firstWhereOrNull((element) => OEMInfo.isRepresentation(element));

    final uefi = UEFI.fromMap(
        machineEntries.firstWhere((element) => UEFI.representsUEFI(element)));

    return MachineSummary(
        deviceTree: deviceTree,
        uefi: uefi,
        oemInfo:
            oemInfoMapMaybe != null ? OEMInfo.fromMap(oemInfoMapMaybe) : null);
  }

  factory MachineSummary.fromJson(Map<String, dynamic> json) =>
      _$MachineSummaryFromJson(json);

  static bool isDetectedIn({required Map<String, dynamic> report}) {
    final entries = report["Machine"];
    if (entries == null) {
      return false;
    }
    final machineList = (entries as List).cast<Map<String, dynamic>>();
    return machineList.any((element) =>
        OEMInfo.isRepresentation(element) || UEFI.representsUEFI(element));
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "System Info", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    List<TreeNodeRepresentable> c = [];
    if (oemInfo != null) {
      c.add(oemInfo!);
    }
    c.add(uefi);

    final tree = deviceTree;
    if (tree != null) {
      c.add(tree.systemSummary);
    }

    return c;
  }

  @override
  get iconData {
    if (oemInfo?.typeName.toLowerCase() == "laptop" ||
        uefi.machineType?.toLowerCase() == "laptop") {
      return UniconsLine.laptop;
    } else if (oemInfo?.typeName.toLowerCase() == "desktop" ||
        uefi.machineType == "desktop") {
      return UniconsLine.desktop;
    } else if (oemInfo?.typeName.toLowerCase() == "server" ||
        uefi.machineType?.toLowerCase() == "server") {
      return UniconsLine.server;
    } else if (uefi.uefi == "Parallels GmbH.") {
      return UniconsLine.laptop_cloud;
    }
    return UniconsLine.circuit; // TODO: this is a pretty arbitrary fallback...
  }
}
