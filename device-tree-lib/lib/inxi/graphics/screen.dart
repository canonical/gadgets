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

import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'graphics_keys.dart';

part 'screen.freezed.dart';
part 'screen.g.dart';

@freezed
class Screen with _$Screen implements TreeNodeRepresentable {
  const Screen._();

  factory Screen(
      {required double dpi,
      required int screen,
      required String resolution,
      required String diagonal,
      required String size}) = _Screen;

  factory Screen.fromMap(Map<String, dynamic> map) => Screen(
      dpi: double.parse(map[InxiKeyGraphics.screenDPI]),
      screen: int.parse(map[InxiKeyGraphics.screen]),
      resolution: map[InxiKeyGraphics.screenResolution]!,
      diagonal: map[InxiKeyGraphics.screenDiagonal]!,
      size: map[InxiKeyGraphics.screenSize]!);

  factory Screen.fromJson(Map<String, dynamic> json) => _$ScreenFromJson(json);

  static bool representsScreen(Map<String, dynamic> map) {
    return map[InxiKeyGraphics.screen] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "Screen $screen",
        data: this,
        label: "$resolution (dpi:$dpi, size: $size)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
