import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:device_tree_lib/inxi/battery/no_battery_detected.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:unicons/unicons.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'unexpected_battery_value.dart';

part 'battery_summary.freezed.dart';
part 'battery_summary.g.dart';

@freezed
class BatterySummary
    with _$BatterySummary
    implements TreeNodeRepresentable, WithIcon {
  const BatterySummary._();

  factory BatterySummary(
      {required List<MachineBattery> machineBatteries,
      required List<PeripheralBattery> peripheralBatteries}) = _BatterySummary;

  factory BatterySummary.fromBatteries(Iterable<BatteryLike> batteries) {
    return BatterySummary(
        machineBatteries: batteries.whereType<MachineBattery>().toList(),
        peripheralBatteries: batteries.whereType<PeripheralBattery>().toList());
  }

  factory BatterySummary.fromReport(Map<String, dynamic> report) {
    return BatterySummary.fromBatteries(
        (report["Battery"] as List).cast<Map<String, dynamic>>().map((map) {
      if (MachineBattery.isRepresentation(map)) {
        return MachineBattery.fromMap(map);
      } else if (PeripheralBattery.isRepresentation(map)) {
        return PeripheralBattery.fromMap(map);
      } else if (NoBatteryDetected.isRepresentation(map)) {
        return NoBatteryDetected();
      } else {
        throw UnexpectedBatteryValue(map);
      }
    }));
  }

  List<BatteryLike> get batteries {
    final tehBatteries = List<BatteryLike>.empty(growable: true);
    tehBatteries.addAll(machineBatteries);
    tehBatteries.addAll(peripheralBatteries);

    if (tehBatteries.isEmpty) {
      tehBatteries.add(NoBatteryDetected());
    }
    return tehBatteries;
  }

  factory BatterySummary.fromJson(Map<String, dynamic> json) =>
      _$BatterySummaryFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "Power Management", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() => batteries;

  @override
  get iconData => UniconsLine.bolt_alt;
}
