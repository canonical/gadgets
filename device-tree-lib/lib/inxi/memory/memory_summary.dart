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

import 'dart:core';

import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'memory_capacity.dart';
import 'memory_slot.dart';
import 'memory_slot_summary.dart';

part 'memory_summary.freezed.dart';
part 'memory_summary.g.dart';

@freezed
class MemorySummary with _$MemorySummary implements TreeNodeRepresentable {
  const MemorySummary._();

  factory MemorySummary(
      {required MemoryCapacity capacity,
      required MemorySlotSummary slotSummary,
      required List<EmptyMemorySlot> emptySlots,
      required List<FilledMemorySlot> filledSlots}) = _MemorySummary;

  factory MemorySummary.fromMaps(
      Map<String, dynamic> capacityMap,
      Map<String, dynamic> slotSummaryMap,
      Iterable<Map<String, dynamic>> slotsMaps) {
    final slots = slotsMaps.map((m) => MemorySlotFactory.fromMap(m)).toList();
    return MemorySummary(
        capacity: MemoryCapacity.fromMap(capacityMap),
        slotSummary: MemorySlotSummary.fromMap(slotSummaryMap),
        emptySlots: slots.whereType<EmptyMemorySlot>().toList(),
        filledSlots: slots.whereType<FilledMemorySlot>().toList());
  }

  factory MemorySummary.fromReport(Map<String, dynamic> report) {
    final memorySummaryInfo = report["Memory"];
    Map<String, dynamic> capacityMap = memorySummaryInfo.elementAt(0);
    Map<String, dynamic> slotSummaryMap = memorySummaryInfo.elementAt(1);
    Iterable<Map<String, dynamic>> slotsMaps =
        List<Map<String, dynamic>>.from(memorySummaryInfo.skip(2)!);
    return MemorySummary.fromMaps(capacityMap, slotSummaryMap, slotsMaps);
  }

  factory MemorySummary.fromJson(Map<String, dynamic> json) =>
      _$MemorySummaryFromJson(json);

  List<MemorySlot> get slots {
    final tehSlots = List<MemorySlot>.from(emptySlots);
    tehSlots.addAll(filledSlots);
    return tehSlots;
  }

  static bool isDetectedIn({required Map<String, dynamic> report}) {
    final rawMemory = report["Memory"];
    if (rawMemory == null || rawMemory is! List) {
      return false;
    }

    return !rawMemory.any((entry) =>
        MemoryCapacity.isDetectedIn(map: entry) ||
        MemorySlotSummary.isDetectedIn(map: entry));
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
