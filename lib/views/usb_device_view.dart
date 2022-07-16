import 'package:device_tree_lib/all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/certification_status_provider.dart';
import 'package:gadgets/views/device_tree_view.dart';

import '../color_modifications.dart';

class USBDeviceView extends ConsumerWidget {
  final USBDevice device;
  final USBSummary usbSummary;
  final bool isSelected;

  const USBDeviceView(
      {Key? key,
      required this.device,
      required this.usbSummary,
      required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final nodeScope = TreeNodeScope.of(context);
    final secondaryTextStyle =
        TextStyle(color: theme.textTheme.bodySmall?.color);

    final certStatus =
        ref.watch(nodeCertificationStatusProvider(nodeScope.node.id));

    return InkWell(
        child: SizedBox(
            height: 45,
            child: Padding(
                padding: EdgeInsets.only(left: indentation(nodeScope)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 8.0),
                      child: Icon(
                        device.iconData,
                        color: certStatus.color(theme: theme),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(device.info),
                        Row(
                          children: [
                            Text(
                              "Speed: ${device.speed}",
                              style: secondaryTextStyle,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            device.driver != null
                                ? Text("(Driver: ${device.driver ?? " None"})",
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