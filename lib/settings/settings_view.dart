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
import 'package:flutter/foundation.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:gadgets/providers/device_report_controller_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/node/node_selection.dart';

import '../common/add_node_dialog.dart';
import '../views/snackbar.dart';
import '../device_report_controller.dart';

part '_actions.dart';
part '_buttonBar.dart';
part '_find_node_field.dart';
part '_header.dart';

const Duration kAnimationDuration = Duration(milliseconds: 300);

const Color kDarkBlue = Color(0xff1565c0);

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: kAnimationDuration,
      tween: Tween<double>(begin: .3, end: 1),
      builder: (_, double opacity, Widget? child) {
        return AnimatedOpacity(
          opacity: opacity,
          duration: kAnimationDuration,
          child: child,
        );
      },
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          _SettingsHeader(text: 'Find Node By Id'),
          _FindNodeField(),
          SizedBox(height: 10),
          _ActionsHeader(),
          _Actions(),
          SizedBox(height: 10),
          _SettingsHeader(text: 'Theme'),
          SizedBox(height: 10),
          _SettingsHeader(text: 'Other')
        ],
      ),
    );
  }
}
