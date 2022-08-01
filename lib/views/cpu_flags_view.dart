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

import 'package:flutter/material.dart';
import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/views/rounded_rectangle_background.dart';
import 'package:gadgets/views/device_tree_view.dart';
import 'package:unicons/unicons.dart';

class CompilerFlagsView extends ConsumerWidget {
  final CPUCompilerFlags flags;
  final bool isSelected;

  const CompilerFlagsView(
      {Key? key, required this.flags, required this.isSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nodeScope = TreeNodeScope.of(context);

    return InkWell(
        child: Padding(
      padding: EdgeInsets.only(left: indentation(nodeScope) + 4),
      child: Wrap(
          spacing: 4,
          runSpacing: 4,
          children: flags.flags
              .split(" ")
              .map((flag) => fixedHeightRoundedRectangle(
                  context: context,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 6.0, vertical: 4.0),
                    child: Text(
                      flag,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  height: 30.0,
                  color: Theme.of(context).focusColor))
              .toList()),
    ));
  }
}
