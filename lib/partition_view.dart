import 'package:flutter/material.dart';
import 'package:device_tree_lib/all.dart';
import 'package:inspector_gadget/device_report_controller.dart';
import 'package:inspector_gadget/device_report_controller_provider.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

import './color_modifications.dart';
import './rounded_rectangle_background.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PartitionView extends ConsumerWidget {
  final Partition partition;

  const PartitionView({Key? key, required this.partition}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nodeScope = TreeNodeScope.of(context);
    final reportController = ref.watch(deviceReportControllerProvider);

    return InkWell(
        child: SizedBox(
            height: 45,
            child: Padding(
                padding: EdgeInsets.only(left: nodeScope.indentation),
                child: Column(
                  children: [
                    _partitionUsageBar(
                        context, reportController, partition, nodeScope.node)
                  ],
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

  Widget _partitionUsageBar(
      BuildContext context,
      DeviceReportController reportController,
      Partition partition,
      TreeNode node) {
    final rawUsage = partition.used;
    if (rawUsage == null) {
      return Container();
    }

    final usage = _parsedUsage(rawUsage);
    if (usage == null) {
      return Container();
    }

    final isSelected = reportController.isSelected(node.id);
    final textStyle = TextStyle(color: isSelected ? kSelectionColor : null);

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
                      style: textStyle,
                    )))
          ])),
      Align(
        alignment: Alignment.topLeft,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            partition.id,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: isSelected ? kSelectionColor : null),
          ),
          Row(
            children: [
              Text(partition.fs, style: textStyle),
              const SizedBox(
                width: 4,
              ),
              Text(
                partition.device != null ? "(${partition.device})" : "",
                style: TextStyle(
                    color: isSelected
                        ? darken(kSelectionColor)
                        : Theme.of(context).textTheme.bodySmall?.color),
              )
            ],
          )
        ]),
      ),
    ]);
  }
}
