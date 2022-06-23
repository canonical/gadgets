import 'dart:core';

import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

class InxiKeyMemoryCapacity {
  static final String total = 'total';
  static final String used = 'used';
  static final String ram = 'RAM'; // not sure what this is?
}

class InxiKeyMemorySlotSummary {
  static final String note = 'note';
  static final String maxModuleSize = 'max-module-size';
  static final String slots = 'slots';
  static final String ec = 'EC';
  static final String capacity = 'capacity';
  static final String array = 'Array'; // not really sure what this is?
}

class InxiKeyMemorySlot {
  static final String partNumber = 'part-no';
  static final String total = 'total';
  static final String device = 'Device';
  static final String busWidth = 'bus-width';
  static final String serial = 'serial';
  static final String size = 'size';
  static final String manufacturer = 'manufacturer';
  static final String speed = 'speed';
  static final String type = 'type';
  static final String detail = 'detail';
}

class MemorySummary implements TreeNodeRepresentable {
  final MemoryCapacity capacity;
  final MemorySlotSummary slotSummary;
  final Iterable<MemorySlot> slots;

  MemorySummary(this.capacity, this.slotSummary, this.slots);

  factory MemorySummary.fromMaps(
      Map<String, dynamic> capacityMap,
      Map<String, dynamic> slotSummaryMap,
      Iterable<Map<String, dynamic>> slotsMaps) {
    return MemorySummary(
        MemoryCapacity.fromMap(capacityMap),
        MemorySlotSummary.fromMap(slotSummaryMap),
        slotsMaps.map((m) => MemorySlotFactory.fromMap(m)));
  }

  factory MemorySummary.fromReport(Map<String, dynamic> report) {
    final memorySummaryInfo = report["Memory"];
    Map<String, dynamic> capacityMap = memorySummaryInfo.elementAt(0);
    Map<String, dynamic> slotSummaryMap = memorySummaryInfo.elementAt(1);
    Iterable<Map<String, dynamic>> slotsMaps =
        List<Map<String, dynamic>>.from(memorySummaryInfo.skip(2)!);
    return MemorySummary.fromMaps(capacityMap, slotSummaryMap, slotsMaps);
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "Memory", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    final items = [
      [capacity],
      [slotSummary],
      slots.cast<TreeNodeRepresentable>()
    ];

    return items.expand((e) => e);
  }
}

class MemoryCapacity implements TreeNodeRepresentable {
  final String total;
  final String used;
  final String ram;

  MemoryCapacity(this.total, this.used, this.ram);

  factory MemoryCapacity.fromMap(Map<String, dynamic> map) {
    return MemoryCapacity(map[InxiKeyMemoryCapacity.total]!,
        map[InxiKeyMemoryCapacity.used]!, map[InxiKeyMemoryCapacity.ram]!);
  }

  @override
  TreeNode treeNodeRepresentation() => TreeNode(
      id: "$used / $total",
      data: this,
      label: "used: $used, total: $total ($ram)");

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}

class MemorySlotSummary implements TreeNodeRepresentable {
  final String note;
  final String maxModuleSize;
  final int slots;
  final String errorCorrection;
  final String capacity;
  final String array; // TODO: not sure what this is, maybe just drop?

  MemorySlotSummary(this.note, this.maxModuleSize, this.slots,
      this.errorCorrection, this.capacity, this.array);
  factory MemorySlotSummary.fromMap(Map<String, dynamic> map) {
    return MemorySlotSummary(
        map[InxiKeyMemorySlotSummary.note]!,
        map[InxiKeyMemorySlotSummary.maxModuleSize]!,
        map[InxiKeyMemorySlotSummary.slots]!,
        map[InxiKeyMemorySlotSummary.ec]!,
        map[InxiKeyMemorySlotSummary.capacity]!,
        map[InxiKeyMemorySlotSummary.array]);
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "$slots memory slots ($capacity)",
        data: this,
        label: "error correction: $errorCorrection");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}

abstract class MemorySlot {
  abstract final String device;
}

class EmptyMemorySlot implements MemorySlot, TreeNodeRepresentable {
  @override
  final String device;

  EmptyMemorySlot(this.device);
  factory EmptyMemorySlot.fromMap(Map<String, dynamic> map) {
    assert(map['size'] == 'No Module Installed');
    return EmptyMemorySlot(map[InxiKeyMemorySlot.device]!);
  }

  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: "(Empty Memory Slot)", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => [];
}

class MemorySlotFactory {
  static fromMap(Map<String, dynamic> map) {
    if (map[InxiKeyMemorySlot.size] == 'No Module Installed') {
      return EmptyMemorySlot.fromMap(map);
    } else {
      return FilledMemorySlot.fromMap(map);
    }
  }
}

class FilledMemorySlot extends MemorySlot implements TreeNodeRepresentable {
  final String manufacturer;
  final String detail;
  final String speed;
  final String type;
  final String total;
  final String partNumber;
  final String size;
  final String serial;
  @override
  final String device;
  final String busWidth;

  FilledMemorySlot(
      this.manufacturer,
      this.detail,
      this.speed,
      this.type,
      this.total,
      this.partNumber,
      this.size,
      this.serial,
      this.busWidth,
      this.device);
  factory FilledMemorySlot.fromMap(Map<String, dynamic> map) {
    return FilledMemorySlot(
      map[InxiKeyMemorySlot.manufacturer]!,
      map[InxiKeyMemorySlot.detail]!,
      map[InxiKeyMemorySlot.speed]!,
      map[InxiKeyMemorySlot.type]!,
      map[InxiKeyMemorySlot.total]!,
      map[InxiKeyMemorySlot.partNumber]!,
      map[InxiKeyMemorySlot.size]!,
      map[InxiKeyMemorySlot.serial]!,
      map[InxiKeyMemorySlot.busWidth]!,
      map[InxiKeyMemorySlot.device]!,
    );
  }

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
