import 'package:device_tree_lib/all.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:collection/collection.dart';
import 'package:unicons/unicons.dart';
import 'package:flutter/widgets.dart';
import 'package:tuple/tuple.dart';

class CPUSummary implements TreeNodeRepresentable, WithIcon {
  final CPU cpu;
  final CPUCoreInfo? coreInfo;
  final CompilerFlags? flags;
  final CPUCoreFrequencyInfo? coreFrequencyInfo;
  final VulnerabilityInfo vulnerabilityInfo;

  CPUSummary(this.cpu, this.coreInfo, this.flags, this.coreFrequencyInfo,
      this.vulnerabilityInfo);

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
        .any((element) => CompilerFlags.isRepresentation(element));
    final flags = compilerFlagsDetected
        ? CompilerFlags.fromMap(cpuSummaryMaps
            .firstWhere((element) => CompilerFlags.isRepresentation(element)))
        : null;

    final coreFreqDetected = cpuSummaryMaps
        .any((element) => CPUCoreFrequencyInfo.isRepresentation(element));
    final coreFrequencyInfo = coreFreqDetected
        ? CPUCoreFrequencyInfo.fromMap(cpuSummaryMaps.firstWhere(
            (element) => CPUCoreFrequencyInfo.isRepresentation(element)))
        : null;

    final vulnerabilityInfo = VulnerabilityInfo.fromReport(reportMap);

    return CPUSummary(cpu, core, flags, coreFrequencyInfo, vulnerabilityInfo);
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "CPU", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [
      [cpu],
      coreInfo != null ? [coreInfo!] : [],
      flags != null ? [flags!] : [],
      coreFrequencyInfo != null ? [coreFrequencyInfo!] : [],
      [vulnerabilityInfo]
    ].expand((e) => e).cast<TreeNodeRepresentable>();
  }

  @override
  get iconData => UniconsLine.processor;
}

class CPU implements TreeNodeRepresentable {
  final String family;
  final int? stepping;
  final String? microcode;
  final String model;
  final String modelID;
  final String type;
  final int bits;
  final String architecture;
  final String? socket;

  CPU(this.family, this.stepping, this.microcode, this.model, this.modelID,
      this.type, this.bits, this.architecture, this.socket);

  factory CPU.fromMap(Map<String, dynamic> map) {
    final rawStepping = map['stepping'];
    return CPU(
        map['family']!,
        rawStepping != null && rawStepping != 'N/A'
            ? int.parse(map['stepping']!)
            : null,
        map['microcode'],
        map['model']!,
        map['model-id']!,
        map['type']!,
        map['bits']!,
        map['arch']!,
        map['socket']);
  }

  static bool isRepresentation(Map<String, dynamic> map) {
    return map['model'] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: model, data: this, label: "$modelID ($architecture)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}

class CPUCoreInfo implements TreeNodeRepresentable {
  final int tpc;
  final String l2;
  final int threads;
  final String l1;
  final String smt;
  final int cores;
  final String cache;
  final int cpus;
  final String l3;
  final String description;

  CPUCoreInfo(this.tpc, this.l2, this.threads, this.l1, this.smt, this.cores,
      this.cache, this.cpus, this.l3, this.description);

  factory CPUCoreInfo.fromMap(Map<String, dynamic> map) {
    return CPUCoreInfo(
        map['tpc']!,
        map['L2']!,
        map['threads']!,
        map['L1']!,
        map['smt']!,
        map['cores']!,
        map['cache']!,
        int.parse(map['cpus']!),
        map['L3']!,
        map['desc']!);
  }

  static bool isRepresentation(Map<String, dynamic> map) {
    return map['L1'] != null;
  }

  static bool cpuCoreInfoDetected(Map<String, dynamic> map) {
    return true;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: description,
        label: "$cores cores, $threads threads across $cpus CPUs");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}

class CPUCoreFrequencyInfo implements TreeNodeRepresentable {
  final String minMax;
  final String driver;
  final int avg;
  final String boost;
  final String extClock;
  final String governor;
  final String volts;
  final int bogomips;
  final String baseBoost;

  final Iterable<int> coreFrequencies;

  CPUCoreFrequencyInfo(
      this.minMax,
      this.driver,
      this.avg,
      this.boost,
      this.extClock,
      this.governor,
      this.volts,
      this.bogomips,
      this.baseBoost,
      this.coreFrequencies);

  factory CPUCoreFrequencyInfo.fromMap(Map<String, dynamic> map) {
    final freqs = <int>[];
    int i = 1;
    while (true) {
      final freq = map[i.toString()];
      if (freq == null) {
        break;
      }
      freqs.add(freq);
      i++;
    }
    return CPUCoreFrequencyInfo(
        map['min/max'], // FIXME: validate that this splits into two int parseable values
        map['driver'],
        map['avg'],
        map['boost'],
        map['ext-clock'],
        map['governor'],
        map['volts'],
        map['bogomips'],
        map['base/boost'],
        freqs);
  }

  Tuple2<int, int> get minMaxFreqs {
    final items = minMax.split("/").map((e) => int.parse(e));
    assert(items.length == 2);
    return Tuple2(items.first, items.last);
  }

  int get minFreq => this.minMaxFreqs.item1;
  int get maxFreq => this.minMaxFreqs.item2;

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

class CompilerFlags implements TreeNodeRepresentable {
  final String flags;

  CompilerFlags(this.flags);

  factory CompilerFlags.fromMap(Map<String, dynamic> map) {
    return CompilerFlags(map['Flags']);
  }

  static bool isRepresentation(Map<String, dynamic> map) {
    return map["Flags"] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "Flags", data: this, label: flags);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}

class VulnerabilityInfo implements TreeNodeRepresentable {
  Iterable<Vulnerability> vulnerabilities;

  VulnerabilityInfo(this.vulnerabilities);

  factory VulnerabilityInfo.fromReport(Map<String, dynamic> map) {
    return VulnerabilityInfo((map["CPU"]! as List)
        .cast<Map<String, dynamic>>()
        .where((element) => Vulnerability.isRepresentation(element))
        .map(Vulnerability.fromMap));
    // .where((element) => element.status != "Not affected"));
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "CPU vulnerabilities", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return vulnerabilities;
  }
}

class Vulnerability implements TreeNodeRepresentable {
  final String status;
  final String type;
  final String? mitigation;

  Vulnerability(this.status, this.type, this.mitigation);

  factory Vulnerability.fromMap(Map<String, dynamic> map) {
    return Vulnerability(map['status']!, map['Type']!, map['mitigation']);
  }

  static bool isRepresentation(Map<String, dynamic> map) {
    return map['Type'] != null && map['status'] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    final mitigationString = mitigation ?? "(No mitigation)";
    return TreeNode(
        id: type,
        data: this,
        label: "status:$status, mitigation: $mitigationString");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
