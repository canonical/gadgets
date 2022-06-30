import 'package:flutter/material.dart';
import 'package:device_tree_lib/all.dart';
import 'package:unicons/unicons.dart';

import './rounded_rectangle_background.dart';
import './color_modifications.dart';

import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

class BatteryView extends StatelessWidget {
  final Battery battery;

  const BatteryView({Key? key, required this.battery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nodeScope = TreeNodeScope.of(context);

    return Padding(
        padding: EdgeInsets.only(
            top: 10, bottom: 10, right: 10, left: nodeScope.indentation),
        child: roundedRectangleBackground(
            context: context,
            height: 76,
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 4, bottom: 6),
                child: Column(
                  children: [
                    header(context),
                    batteryChargeBar(),
                    footer(context)
                  ],
                ))));
  }

  Widget header(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 6, top: 0, bottom: 2, right: 0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Row(children: [
              const Icon(UniconsLine.battery_bolt),
              const SizedBox(width: 2),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 0, top: 0, bottom: 3, right: 0),
                  child: Text(
                    battery is PeripheralBattery
                        ? battery.model
                        : "Laptop Battery (${battery.model})",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Theme.of(context).textTheme.titleSmall!.color,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )),
            ])));
  }

  Widget footer(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 6, top: 3, bottom: 0, right: 0),
        child: Row(children: [
          batteryHealth(context),
          const Spacer(),
          Text(battery.status,
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodySmall!.color,
                  fontSize: 13,
                  fontWeight: FontWeight.normal)),
          const SizedBox(width: 6)
        ]));
  }

  Widget batteryHealth(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final battery = this.battery;

    if (battery is MachineBattery) {
      return Row(children: [
        const Icon(
          Icons.favorite,
          color: Colors.blue,
          size: 18,
        ),
        const SizedBox(width: 2),
        Text(battery.condition,
            style: TextStyle(
                color: textTheme.bodySmall!.color,
                fontSize: 13,
                fontWeight: FontWeight.normal))
      ]);
    } else {
      return Container();
    }
  }

  static final _chargePattern = RegExp(r'(\d+\.\d+)%');

  double? parsedCharge(String charge) {
    final foundMatch = _chargePattern.firstMatch(charge)?.group(1);
    if (foundMatch != null) {
      return double.parse(foundMatch) / 100.0;
    } else {
      return null;
    }
  }

  Widget batteryChargeBar() {
    final charge = parsedCharge(battery.charge);
    if (charge == null) {
      return Container();
    }

    return Stack(children: [
      SizedBox(
          height: 30,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
          )),
      SizedBox(
          height: 30,
          child: FractionallySizedBox(
              widthFactor: charge,
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: barColor(charge: charge),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  )))),
      Center(
          child: Padding(
              padding: const EdgeInsets.only(top: 1, bottom: 0),
              child: Text(battery.charge,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: barTitleColor(charge: charge)))))
    ]);
  }
}
