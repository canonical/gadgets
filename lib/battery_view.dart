import 'package:flutter/material.dart';
import 'package:device_tree_lib/all.dart';
import 'package:unicons/unicons.dart';

class BatteryView extends StatelessWidget {
  final Battery battery;

  const BatteryView({Key? key, required this.battery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: roundedRectangleBackground(
            context: context,
            height: 96,
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

  Widget roundedRectangleBackground(
      {required BuildContext context,
      required Widget child,
      required double height}) {
    return IntrinsicHeight(
        child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).highlightColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            child: child));
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
                        : "Computer Battery",
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

  Widget batteryChargeBar() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 107, 212, 95),
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Center(
          child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(battery.charge,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromARGB(255, 53, 106, 47))))),
    );
  }
}
