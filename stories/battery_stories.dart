import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inspector_gadget/battery_view.dart';
import 'package:device_tree_lib/all.dart';

final battery = PeripheralBattery(
    charge: "50%",
    model: "Logitech Wireless Mouse MX Master 3",
    serial: "4082-b9-7b-a7-06",
    status: "Discharging",
    rechargeable: "yes",
    device: "hidpp_battery_1");

Widget fullBattery() => BatteryView(battery: battery);
