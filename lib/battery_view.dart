import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:device_tree_lib/all.dart';

class BatteryView extends StatelessWidget {
  final Battery battery;

  const BatteryView({Key? key, required this.battery}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
                padding:
                    const EdgeInsets.only(left: 6, top: 2, bottom: 8, right: 0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Battery: ${battery.model}",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ))),
            Container(
              height: 40,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 107, 212, 95),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Center(
                  child: Text(battery.charge,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromARGB(255, 53, 106, 47)))),
            )
          ],
        ));
  }
}
