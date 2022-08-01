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

import 'battery_like.dart';

class NoBatteryDetected implements BatteryLike {
  NoBatteryDetected();
  static bool isRepresentation(Map<String, dynamic> map) =>
      map.keys.length == 1 && map['Message'] != null;

  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: "(No battery detected)", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}
