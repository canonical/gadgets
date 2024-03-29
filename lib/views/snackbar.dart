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

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

class FollowUp {
  final String prompt;
  final VoidCallback? callback;

  FollowUp(this.prompt, this.callback);
}

Color snackBarBackgroundColor(ThemeData theme) =>
    theme.brightness == Brightness.light
        ? Colors.grey.shade300
        : Colors.grey.shade800;

void showSnackBar(
  BuildContext context, {
  required String message,
  String detail = "",
  Widget? bodyContent,
  Icon? icon,
  FollowUp? followUp,
  Duration duration = const Duration(seconds: 10),
}) {
  final messageText =
      Text(message, style: Theme.of(context).textTheme.titleSmall);
  final Widget headerContent = Row(
    children: [
      icon ?? const SizedBox(height: 10),
      const SizedBox(width: 10),
      detail != ""
          ? SizedBox(
              height: 38,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    messageText,
                    const SizedBox(
                      height: 2,
                    ),
                    Text(detail, style: Theme.of(context).textTheme.bodySmall)
                  ]),
            )
          : messageText,
      Expanded(
          child: Flex(
        direction: Axis.horizontal,
      )),
      followUp != null
          ? OutlinedButton(
              onPressed: followUp.callback, child: Text(followUp.prompt))
          : const SizedBox(
              width:
                  0, // using a Container seemed to fill up the whole containing view
            )
    ],
  );

  return showSnackBarWithContent(context, headerContent,
      bodyContent: bodyContent, duration: duration);
}

void showSnackBarWithContent(
  BuildContext context,
  Widget headerContent, {
  Widget? bodyContent,
  Duration duration = const Duration(seconds: 10),
}) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.fixed,
        backgroundColor: snackBarBackgroundColor(Theme.of(context)),
        content: bodyContent != null
            ? Column(children: [headerContent, bodyContent])
            : headerContent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8), topRight: Radius.circular(8)),
        ),
        duration: duration,
      ),
    );
}
