import 'package:flutter/material.dart';
import 'package:device_tree_lib/all.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/views/device_tree_view.dart';
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
    final freqs = cpuSummary.coreFrequencyInfo?.minMaxFreqs;

    return InkWell(
        child: SizedBox(
            height: 90,
            child: Padding(
                padding: EdgeInsets.only(left: indentation(nodeScope)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 4.0, right: 8.0),
                      child: Icon(UniconsLine.processor),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(cpu.model),
                          const SizedBox(
                            width: 3,
                          ),
                        ]),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                    "${cpuSummary.coreInfo?.cpus}x ${cpu.architecture} family, ${cpu.bits}-bit CPU"),
                                Text(
                                    ": ${cpuSummary.coreInfo?.l1} L1, ${cpuSummary.coreInfo?.l2} L2, ${cpuSummary.coreInfo?.l3} L3 cache",
                                    style: secondaryTextStyle)
                              ],
                            ),
                            const SizedBox(width: 3),
                            cpuSummary.coreInfo?.dies != null
                                ? Text("(on ${cpuSummary.coreInfo?.dies} dies)",
                                    style: secondaryTextStyle)
                                : Container(),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Base ${cpuSummary.coreFrequencyInfo?.baseFreq} GHz, Boost ${cpuSummary.coreFrequencyInfo?.boostFreq} GHz",
                        ),
                        Row(
                          children: [
                            Text(
                                "Min ${cpuSummary.coreFrequencyInfo?.minFreq} GHz, Max ${cpuSummary.coreFrequencyInfo?.maxFreq} GHz",
                                style: secondaryTextStyle),
                            const SizedBox(width: 3),
                            Text(
                                "(Avg ${cpuSummary.coreFrequencyInfo?.avg} GHz)",
                                style: secondaryTextStyle)
                          ],
                        ),
                      ],
                    ),
                  ],
                ))));
  }
}
