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

    return InkWell(
        child: SizedBox(
            height: 45,
            child: Padding(
                padding: EdgeInsets.only(left: nodeScope.indentation),
                child: Column(
                  children: [_partitionUsageBar(context, partition)],
                ))));
  }

  static final _parenthesizedPercentagePattern = RegExp(r'(\d+\.\d+)%');

  double? _parsedUsage(String charge) {
    final foundMatch =
        _parenthesizedPercentagePattern.firstMatch(charge)?.group(1);
    if (foundMatch != null) {
      return double.parse(foundMatch) / 100.0;
    } else {
      return null;
    }
  }

  Widget _partitionUsageBar(BuildContext context, Partition partition) {
    final rawUsage = partition.used;
    if (rawUsage == null) {
      return Container();
    }

    final usage = _parsedUsage(rawUsage);
    if (usage == null) {
      return Container();
    }

    return Row(children: [
      Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Stack(children: [
            fixedHeightRoundedRectangle(
                context: context,
                child: Container(),
                color: Theme.of(context).highlightColor,
                height: 34,
                width: 150),
            fixedHeightRoundedRectangle(
                context: context,
                child: Container(),
                color: usage > 0.9
                    ? const Color.fromARGB(255, 126, 0, 0)
                    : Theme.of(context).primaryColor,
                height: 34,
                width: 5 + usage * 145),
            SizedBox(
                height: 34,
                width: 150,
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      partition.used ?? "",
                      textAlign: TextAlign.center,
                    )))
          ])),
      Align(
        alignment: Alignment.topLeft,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            partition.id,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Text(partition.fs),
              Text(
                partition.device != null ? "(${partition.device})" : "",
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodySmall?.color),
              )
            ],
          )
        ]),
      ),
    ]);
  }
}
