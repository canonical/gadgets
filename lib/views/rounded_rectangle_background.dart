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
