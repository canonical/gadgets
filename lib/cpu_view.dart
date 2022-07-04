import 'package:flutter/material.dart';
import 'package:device_tree_lib/all.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unicons/unicons.dart';

class CPUView extends ConsumerWidget {
  final CPU cpu;
  final CPUSummary cpuSummary;
  final bool isSelected;

  const CPUView(
      {Key? key,
      required this.cpu,
      required this.cpuSummary,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nodeScope = TreeNodeScope.of(context);
    // final reportController = ref.watch(deviceReportControllerProvider);
    final secondaryTextStyle =
        TextStyle(color: Theme.of(context).textTheme.bodySmall?.color);

    return InkWell(
        child: SizedBox(
            height: 45,
            child: Padding(
                padding: EdgeInsets.only(left: nodeScope.indentation),
                child: Row(
                  children: [
                    const Icon(UniconsLine.processor),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(cpu.model),
                          const SizedBox(
                            width: 3,
                          ),
                          Text("(${cpu.architecture} family, ${cpu.bits} bits)",
                              style: secondaryTextStyle)
                        ]),
                        Row(
                          children: [
                            Text("${cpuSummary.coreFrequencyInfo?.minMax} GHz",
                                style: secondaryTextStyle),
                            const SizedBox(width: 3),
                            cpuSummary.coreInfo?.cores != null
                                ? Text(
                                    "(${cpuSummary.coreInfo?.cores ?? "Unknown"} cores)",
                                    style: secondaryTextStyle)
                                : Container(),
                          ],
                        )
                      ],
                    ),
                  ],
                ))));
  }
}
