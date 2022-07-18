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
// part 'machine_summary.g.dart';

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

  // factory MachineSummary.fromJson(Map<String, dynamic> json) =>
  //    _$MachineSummaryFromJson(json);

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
