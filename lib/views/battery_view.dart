import 'package:flutter/material.dart';
import 'package:device_tree_lib/all.dart';
import 'package:gadgets/device_report_controller.dart';
import 'package:gadgets/device_report_controller_provider.dart';
import 'package:unicons/unicons.dart';

import 'rounded_rectangle_background.dart';
import '../color_modifications.dart';

import 'device_tree_view.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

class BatteryView extends ConsumerWidget {
  final Battery battery;
  final bool isSelected;

  const BatteryView({Key? key, required this.battery, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nodeScope = TreeNodeScope.of(context);

    return Padding(
        padding: EdgeInsets.only(
            top: 0, bottom: 0, right: 10, left: indentation(nodeScope)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: _batteryChargeBar(context),
              ),
              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _batteryModel(context, nodeScope.node),
                      _batteryHealth(context, nodeScope.node),
                    ],
                  ),
                )
              ])
            ])
          ],
        ));
  }

  Widget _batteryModel(BuildContext context, TreeNode node) {
    return Align(
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
                color: isSelected
                    ? kSelectionColor
                    : Theme.of(context).textTheme.titleSmall?.color,
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
        ]));
  }

  Widget _batteryHealth(BuildContext context, TreeNode node) {
    final textTheme = Theme.of(context).textTheme;
    final battery = this.battery;

    if (battery is MachineBattery) {
      return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 1),
            const Icon(
              Icons.favorite_outline,
              size: 18,
            ),
            const SizedBox(width: 6),
            Text(battery.condition,
                style: TextStyle(
                    color: isSelected
                        ? darken(kSelectionColor)
                        : textTheme.bodySmall?.color,
                    fontSize: 13,
                    fontWeight: FontWeight.normal))
          ]);
    } else {
      return Container();
    }
  }

  static final _chargePattern = RegExp(r'(\d+\.\d+)%');

  double? _parsedCharge(String charge) {
    final foundMatch = _chargePattern.firstMatch(charge)?.group(1);
    if (foundMatch != null) {
      return double.parse(foundMatch) / 100.0;
    } else {
      return null;
    }
  }

  Widget _batteryChargeBar(BuildContext context) {
    final charge = _parsedCharge(battery.charge);
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
                decoration: BoxDecoration(
                  color: Theme.of(context).highlightColor,
                  borderRadius: const BorderRadius.all(
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
