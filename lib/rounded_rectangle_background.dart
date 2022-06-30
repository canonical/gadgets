import 'package:flutter/material.dart';

Widget roundedRectangleBackground(
    {required BuildContext context,
    required Widget child,
    required double height}) {
  return IntrinsicHeight(
      child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).highlightColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          child: child));
}
