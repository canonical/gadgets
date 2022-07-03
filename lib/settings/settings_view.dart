import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:inspector_gadget/device_report_controller_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inspector_gadget/node/node_selection.dart';

import '../common/common.dart';
import '../device_report_controller.dart';

part '_actions.dart';
part '_buttonBar.dart';
part '_find_node_field.dart';
part '_header.dart';
part '_swap_expansion_button.dart';

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
          _SettingsHeader(text: 'Other'),
          _SwapExpansionButton(),
        ],
      ),
    );
  }
}
