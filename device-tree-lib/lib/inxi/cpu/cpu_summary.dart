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
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unicons/unicons.dart';

import '../../presentation/detail_node.dart';

import 'cpu_compiler_flags.dart';
import 'cpu_core_frequency_info.dart';
import 'cpu_core_info.dart';
import 'cpu_vulnerability_info.dart';
import 'cpu_vulnerability.dart';
import 'cpu.dart';

part 'cpu_summary.freezed.dart';
part 'cpu_summary.g.dart';

@freezed
class CPUSummary with _$CPUSummary implements TreeNodeRepresentable, WithIcon {
  const CPUSummary._();

  factory CPUSummary(
      {required CPU cpu,
      CPUCoreInfo? coreInfo,
      CPUCompilerFlags? flags,
      CPUCoreFrequencyInfo? coreFrequencyInfo,
      required CPUVulnerabilityInfo vulnerabilityInfo}) = _CPUSummary;

  factory CPUSummary.fromReport(Map<String, dynamic> reportMap) {
    final cpuSummaryMaps =
        (reportMap['CPU']! as List).cast<Map<String, dynamic>>();

    final cpu = CPU.fromMap(
        cpuSummaryMaps.firstWhere((element) => CPU.isRepresentation(element)));

    final cpuCoreInfoDetected =
        cpuSummaryMaps.any((element) => CPUCoreInfo.isRepresentation(element));
    final core = cpuCoreInfoDetected
        ? CPUCoreInfo.fromMap(cpuSummaryMaps
            .firstWhere((element) => CPUCoreInfo.isRepresentation(element)))
        : null;

    final compilerFlagsDetected = cpuSummaryMaps
        .any((element) => CPUCompilerFlags.isRepresentation(element));
    final flags = compilerFlagsDetected
        ? CPUCompilerFlags.fromMap(cpuSummaryMaps.firstWhere(
            (element) => CPUCompilerFlags.isRepresentation(element)))
        : null;

    final coreFreqDetected = cpuSummaryMaps
        .any((element) => CPUCoreFrequencyInfo.isRepresentation(element));
    final coreFrequencyInfo = coreFreqDetected
        ? CPUCoreFrequencyInfo.fromMap(cpuSummaryMaps.firstWhere(
            (element) => CPUCoreFrequencyInfo.isRepresentation(element)))
        : null;

    final vulnerabilityInfo = CPUVulnerabilityInfo.fromReport(reportMap);

    return CPUSummary(
        cpu: cpu,
        coreInfo: core,
        flags: flags,
        coreFrequencyInfo: coreFrequencyInfo,
        vulnerabilityInfo: vulnerabilityInfo);
  }

  factory CPUSummary.fromJson(Map<String, dynamic> json) =>
      _$CPUSummaryFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "CPU", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [
      [cpu],
      // coreInfo != null ? [coreInfo!] : [],
      flags != null
          ? [
              Detail(
                  parent: this,
                  value: "",
                  key: "Feature flags",
                  childNodes: [flags!])
            ]
          : [],
      // coreFrequencyInfo != null ? [coreFrequencyInfo!] : [],
      [vulnerabilityInfo]
    ].expand((item) => item).cast<TreeNodeRepresentable>();
  }

  @override
  get iconData => UniconsLine.processor;
}
