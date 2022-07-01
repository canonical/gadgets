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
            top: 0, bottom: 0, right: 10, left: nodeScope.indentation),
        child: fixedHeightRoundedRectangle(
            context: context,
            height: 51,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: batteryChargeBar(),
                  ),
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          batteryModel(context),
                          batteryHealth(context),
                        ],
                      ),
                    )
                  ])
                ])
              ],
            )));
  }

  Widget batteryModel(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 0, top: 0, bottom: 0, right: 0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Row(children: [
              const Icon(UniconsLine.battery_bolt),
              const SizedBox(width: 2),
              Text(
                battery is PeripheralBattery
                    ? battery.model
                    : "Laptop Battery (${battery.model})",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Theme.of(context).textTheme.titleSmall!.color,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ])));
  }

  Widget batteryHealth(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final battery = this.battery;

    if (battery is MachineBattery) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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

    return SizedBox(
        width: 150,
        height: 40,
        child: Stack(children: [
          SizedBox(
              height: 40,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                ),
              )),
          SizedBox(
              height: 40,
              child: FractionallySizedBox(
                  widthFactor: charge,
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: barColor(value: charge),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(6.0),
                        ),
                      )))),
          Center(
              child: Text(battery.charge, style: const TextStyle(fontSize: 15)))
        ]));
  }
}
