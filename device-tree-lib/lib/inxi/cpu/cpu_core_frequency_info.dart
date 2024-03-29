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

import 'package:device_tree_lib/int_parsing.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuple/tuple.dart';

part 'cpu_core_frequency_info.freezed.dart';
part 'cpu_core_frequency_info.g.dart';

@freezed
class CPUCoreFrequencyInfo
    with _$CPUCoreFrequencyInfo
    implements TreeNodeRepresentable {
  const CPUCoreFrequencyInfo._();

  factory CPUCoreFrequencyInfo(
      {required String minMax,
      required String driver,
      required int avg,
      required String boost,
      String? extClock,
      required String governor,
      String? volts,
      required int bogomips,
      String? baseBoost,
      required List<int> coreFrequencies}) = _CPUCoreFrequencyInfo;

  factory CPUCoreFrequencyInfo.fromMap(Map<String, dynamic> map) {
    final freqs = <int>[];
    int i = 1;
    while (true) {
      final freq = map[i.toString()];
      if (freq == null) {
        break;
      }
      freqs.add(maybeParseInt(freq)!);
      i++;
    }
    return CPUCoreFrequencyInfo(
        minMax: map[
            'min/max'], // FIXME: validate that this splits into two int parseable values
        driver: map['driver'],
        avg: map['avg'],
        boost: map['boost'],
        extClock: map['ext-clock'],
        governor: map['governor'],
        volts: map['volts'],
        bogomips: map['bogomips'],
        baseBoost: map['base/boost'],
        coreFrequencies: freqs);
  }

  factory CPUCoreFrequencyInfo.fromJson(Map<String, dynamic> json) =>
      _$CPUCoreFrequencyInfoFromJson(json);

  Tuple2<int, int> get minMaxFreqs {
    final items = minMax.split("/").map((f) => int.parse(f));
    assert(items.length == 2);
    return Tuple2(items.first, items.last);
  }

  Tuple2<int, int>? get baseBoostFreqs {
    final items = baseBoost?.split("/").map((f) => int.parse(f));
    if (items == null) {
      return null;
    }

    assert(items.length == 2);
    return Tuple2(items.first, items.last);
  }

  int get minFreq => minMaxFreqs.item1;
  int get maxFreq => minMaxFreqs.item2;

  int? get baseFreq => baseBoostFreqs?.item1;
  int? get boostFreq => baseBoostFreqs?.item2;

  static bool isRepresentation(Map<String, dynamic> map) {
    return map['driver'] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "min/max freq: $minMax",
        data: this,
        label: "avg freq: $avg, base/boost: $baseBoost");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
