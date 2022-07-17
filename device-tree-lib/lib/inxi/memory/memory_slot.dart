import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'memory_keys.dart';

part 'memory_slot.freezed.dart';
part 'memory_slot.g.dart';

abstract class MemorySlot {
  abstract final String device;
}

@freezed
class EmptyMemorySlot
    with _$EmptyMemorySlot
    implements MemorySlot, TreeNodeRepresentable {
  const EmptyMemorySlot._();

  factory EmptyMemorySlot({required String device}) = _EmptyMemorySlot;

  factory EmptyMemorySlot.fromMap(Map<String, dynamic> map) {
    assert(map['size'] == 'No Module Installed');
    return EmptyMemorySlot(device: map[InxiKeyMemorySlot.device]!);
  }

  factory EmptyMemorySlot.fromJson(Map<String, dynamic> json) =>
      _$EmptyMemorySlotFromJson(json);

  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: "(Empty Memory Slot)", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}

class MemorySlotFactory {
  static MemorySlot fromMap(Map<String, dynamic> map) {
    if (map[InxiKeyMemorySlot.size] == 'No Module Installed') {
      return EmptyMemorySlot.fromMap(map);
    } else {
      return FilledMemorySlot.fromMap(map);
    }
  }
}

@freezed
class FilledMemorySlot
    with _$FilledMemorySlot
    implements MemorySlot, TreeNodeRepresentable {
  const FilledMemorySlot._();

  factory FilledMemorySlot(
      {required String manufacturer,
      required String detail,
      required String speed,
      required String type,
      required String total,
      required String partNumber,
      required String size,
      required String serial,
      required String busWidth,
      required String device}) = _FilledMemorySlot;

  factory FilledMemorySlot.fromMap(Map<String, dynamic> map) =>
      FilledMemorySlot(
        manufacturer: map[InxiKeyMemorySlot.manufacturer]!,
        detail: map[InxiKeyMemorySlot.detail]!,
        speed: map[InxiKeyMemorySlot.speed]!,
        type: map[InxiKeyMemorySlot.type]!,
        total: map[InxiKeyMemorySlot.total]!,
        partNumber: map[InxiKeyMemorySlot.partNumber]!,
        size: map[InxiKeyMemorySlot.size]!,
        serial: map[InxiKeyMemorySlot.serial]!,
        busWidth: map[InxiKeyMemorySlot.busWidth]!,
        device: map[InxiKeyMemorySlot.device]!,
      );

  factory FilledMemorySlot.fromJson(Map<String, dynamic> json) =>
      _$FilledMemorySlotFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "$type ($manufacturer)",
        data: this,
        label: "$partNumber ($detail, $speed)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
