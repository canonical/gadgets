import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inspector_gadget/battery_view.dart';
import 'package:device_tree_lib/all.dart';

final nearlyFullPeripheralBattery = PeripheralBattery(
    charge: "92%",
    model: "Logitech Wireless Mouse MX Master 3",
    serial: "4082-b9-7b-a7-06",
    status: "Discharging",
    rechargeable: "yes",
    device: "hidpp_battery_1");

final nearlyFullMachineBattery = MachineBattery(
    charge: "92%",
    model: "Sunwoda L19D4PH3",
    serial: "13167",
    status: "Discharging",
    type: "Li-poly",
    condition: "58.6/61.0 Wh (96.0%)",
    min: 15.4,
    cycles: 46,
    id: "BAT0",
    volts: 15.8);

Widget nearlyFullPeripheralBatteryStory() =>
    BatteryView(battery: nearlyFullPeripheralBattery);

Widget nearlyFullMachineBatteryStory() =>
    BatteryView(battery: nearlyFullMachineBattery);
