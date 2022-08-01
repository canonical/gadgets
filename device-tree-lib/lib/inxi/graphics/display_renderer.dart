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
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'graphics_keys.dart';

part 'display_renderer.freezed.dart';
part 'display_renderer.g.dart';

@freezed
class DisplayRenderer with _$DisplayRenderer implements TreeNodeRepresentable {
  const DisplayRenderer._();

  factory DisplayRenderer(
      {required bool directRender,
      required String renderer,
      required String version,
      required String openGL}) = _DisplayRenderer;

  factory DisplayRenderer.fromMap(Map<String, dynamic> map) => DisplayRenderer(
      directRender: map[InxiKeyGraphics.directRender]! == 'Yes',
      renderer: map[InxiKeyGraphics.renderer]!,
      version: map[InxiKeyGraphics.version]!,
      openGL: map[InxiKeyGraphics.openGL]!);

  factory DisplayRenderer.fromJson(Map<String, dynamic> json) =>
      _$DisplayRendererFromJson(json);

  static bool representsDisplayRenderer(Map<String, dynamic> map) {
    return map[InxiKeyGraphics.renderer] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: renderer,
        data: this,
        label:
            "direct render: $directRender, version: $version, OpenGL: $openGL");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
