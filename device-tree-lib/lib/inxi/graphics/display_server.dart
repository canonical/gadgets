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

import 'package:device_tree_lib/inxi/graphics/graphics_keys.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'display_server.freezed.dart';
part 'display_server.g.dart';

@freezed
class DisplayServer with _$DisplayServer implements TreeNodeRepresentable {
  const DisplayServer._();

  factory DisplayServer(
      {required String driver,
      String? loaded,
      String? version,
      required String screens,
      required String gpu,
      String? X,
      required String server,
      required String display,
      String? unloaded,
      required String displayID,
      required String compositor}) = _DisplayServer;

  factory DisplayServer.fromMap(Map<String, dynamic> map) => DisplayServer(
      driver: map[InxiKeyGraphics.driver]!,
      loaded: map[InxiKeyGraphics.loaded],
      version: map[InxiKeyGraphics.version],
      screens: map[InxiKeyGraphics.screens]!,
      gpu: map[InxiKeyGraphics.gpu]!,
      X: map[InxiKeyGraphics.x],
      server: map[InxiKeyGraphics.server]!,
      display: map[InxiKeyGraphics.display]!,
      unloaded: map[InxiKeyGraphics.unloaded],
      displayID: map[InxiKeyGraphics.displayID]!,
      compositor: map[InxiKeyGraphics.compositor]!);

  factory DisplayServer.fromJson(Map<String, dynamic> json) =>
      _$DisplayServerFromJson(json);

  static bool representsDisplayServer(Map<String, dynamic> map) {
    return map[InxiKeyGraphics.compositor] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "Display server",
        data: this,
        label: "$server ($display, gpu: $gpu, compositor: $compositor)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
