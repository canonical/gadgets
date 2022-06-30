import 'package:flutter/material.dart';
import 'package:device_tree_lib/all.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

import './color_modifications.dart';
import './rounded_rectangle_background.dart';

class PartitionView extends StatelessWidget {
  final Partition partition;

  const PartitionView({Key? key, required this.partition}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nodeScope = TreeNodeScope.of(context);

    return Padding(
        padding: EdgeInsets.only(
            top: 0, bottom: 0, right: 0, left: nodeScope.indentation),
        child: SizedBox(
            width: 200,
            height: 30,
            child: // Row(children: [
                // const Text("Foo"),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 4, bottom: 6),
                    child: Column(
                      children: [_partitionUsageBar(partition)],
                    ))));
  }

  static final _chargePattern = RegExp(r'(\d+\.\d+)%');

  double? _parsedUsage(String charge) {
    final foundMatch = _chargePattern.firstMatch(charge)?.group(1);
    if (foundMatch != null) {
      return double.parse(foundMatch) / 100.0;
    } else {
      return null;
    }
  }

  Widget _partitionUsageBar(Partition partition) {
    final rawUsage = partition.used;
    if (rawUsage == null) {
      return Container();
    }

    final usage = _parsedUsage(rawUsage);
    if (usage == null) {
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
              widthFactor: usage,
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: barColor(charge: 1.0 - usage),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  )))),
      Center(
          child: Padding(
              padding: const EdgeInsets.only(top: 1, bottom: 0),
              child: Text("$rawUsage (${partition.fs} @ ${partition.id})",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: barTitleColor(charge: 1.0 - usage)))))
    ]);
  }
}
