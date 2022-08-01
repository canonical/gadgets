/*
 * Copyright (C) 2022 Canonical Ltd
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/providers/certification_status_provider.dart';
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
