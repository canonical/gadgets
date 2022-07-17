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
