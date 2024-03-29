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
import 'bluetooth_keys.dart';

part 'bluetooth_link.freezed.dart';
part 'bluetooth_link.g.dart';

@freezed
class BluetoothLink with _$BluetoothLink implements TreeNodeRepresentable {
  const BluetoothLink._();

  factory BluetoothLink(
      {required String linkPolicy,
      required String scoMTU,
      required String info,
      required String linkMode,
      required String aclMTU}) = _BluetoothLink;

  factory BluetoothLink.fromMap(Map<String, dynamic> map) => BluetoothLink(
      linkPolicy: map[InxiKeyBluetooth.linkPolicy]!,
      scoMTU: map[InxiKeyBluetooth.scoMTU]!,
      info: map[InxiKeyBluetooth.info]!,
      linkMode: map[InxiKeyBluetooth.linkMode]!,
      aclMTU: map[InxiKeyBluetooth.aclMTU]!);

  factory BluetoothLink.fromJson(Map<String, dynamic> json) =>
      _$BluetoothLinkFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "bluetooth-link",
        data: this,
        label:
            "Link mode: $linkMode, policy: $linkPolicy, sco-mtu: $scoMTU, acl-mtu: $aclMTU");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
