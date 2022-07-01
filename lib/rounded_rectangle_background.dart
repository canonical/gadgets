import 'package:flutter/material.dart';

Widget fixedHeightRoundedRectangle({
  required BuildContext context,
  required Widget child,
  required double height,
  required Color color,
  double borderRadius = 6.0,
  double? width,
  AlignmentGeometry? alignment,
}) {
  return SizedBox(
      width: width,
      height: height,
      child: Container(
          alignment: alignment,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
          child: child));
}

Widget stretchyRoundedRectangle(
    {required BuildContext context,
    required Widget child,
    required double height,
    double borderRadius = 12.0}) {
  return SizedBox(
      height: height,
      child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).highlightColor,
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
          child: child));
}
