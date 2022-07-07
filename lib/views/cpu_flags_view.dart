import 'package:flutter/material.dart';
import 'package:device_tree_lib/all.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/views/rounded_rectangle_background.dart';
import 'package:gadgets/views/device_tree_view.dart';
import 'package:unicons/unicons.dart';

class CompilerFlagsView extends ConsumerWidget {
  final CompilerFlags flags;
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
