import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:unicons/unicons.dart';

class UnexpectedBatteryValue implements Exception {
  Map<String, dynamic> value;
  UnexpectedBatteryValue(this.value);
  String? get message =>
      "Unexpected battery value $value (of type ${value.runtimeType})";
}

class BatterySummary implements TreeNodeRepresentable, WithIcon {
  Iterable<BatteryLike> batteries;

  BatterySummary(this.batteries);

  factory BatterySummary.fromReport(Map<String, dynamic> report) {
    return BatterySummary(
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

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "Power Management", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() => batteries;

  @override
  get iconData => UniconsLine.bolt_alt;
}

abstract class BatteryLike implements TreeNodeRepresentable {}

abstract class Battery implements BatteryLike, TreeNodeRepresentable {
  final String status;
  final String serial;
  final String model;
  final String charge;

  Battery(
      {required this.status,
      required this.serial,
      required this.model,
      required this.charge});
}

class MachineBattery extends Battery
    implements TreeNodeRepresentable, WithIcon {
  final String type;
  final String id;
  final int cycles;
  final String condition;
  final double min;
  final double volts;

  MachineBattery(
      {required status,
      required serial,
      required model,
      required charge,
      required this.type,
      required this.id,
      required this.cycles,
      required this.condition,
      required this.min,
      required this.volts})
      : super(status: status, serial: serial, model: model, charge: charge);

  factory MachineBattery.fromMap(Map<String, dynamic> map) {
    return MachineBattery(
        status: map['status'],
        serial: map['serial'],
        model: map['model'],
        type: map['type'],
        id: map['ID'],
        charge: map['charge'],
        cycles: int.parse(map['cycles']),
        condition: map['condition'],
        min: double.parse(map['min']),
        volts: double.parse(map['volts']));
  }

  static bool isRepresentation(Map<String, dynamic> map) {
    return map["cycles"] != null;
  }

  @override
  TreeNode treeNodeRepresentation() => TreeNode(
      id: "Device Battery ($type)",
      data: this,
      label: "$charge ($status, $condition)");

  @override
  Iterable<TreeNodeRepresentable> children() => [];

  @override
  get iconData {
    return UniconsSolid.battery_bolt;
  }
}

class PeripheralBattery extends Battery implements TreeNodeRepresentable {
  final String rechargeable;
  final String device;

  PeripheralBattery(
      {required status,
      required serial,
      required model,
      required charge,
      required this.rechargeable,
      required this.device})
      : super(status: status, serial: serial, model: model, charge: charge);

  factory PeripheralBattery.fromMap(Map<String, dynamic> map) {
    return PeripheralBattery(
        status: map['status'],
        serial: map['serial'],
        model: map['model'],
        charge: map['charge'],
        rechargeable: map['rechargeable'],
        device: map['Device']);
  }

  static bool isRepresentation(Map<String, dynamic> map) =>
      map['Device'] != null;

  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: model, data: this, label: "$charge ($status)");

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}

class NoBatteryDetected implements BatteryLike {
  NoBatteryDetected();
  static bool isRepresentation(Map<String, dynamic> map) =>
      map.keys.length == 1 && map['Message'] != null;

  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: "(No battery detected)", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
