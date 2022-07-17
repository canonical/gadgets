import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu_core_info.freezed.dart';
part 'cpu_core_info.g.dart';

@freezed
class CPUCoreInfo with _$CPUCoreInfo implements TreeNodeRepresentable {
  const CPUCoreInfo._();

  factory CPUCoreInfo(
      {required int tpc,
      required String l2,
      required int threads,
      required String l1,
      required String smt,
      required int cores,
      required String cache,
      required int cpus,
      required String l3,
      required String description,
      required int? dies}) = _CPUCoreInfo;

  factory CPUCoreInfo.fromMap(Map<String, dynamic> map) => CPUCoreInfo(
      tpc: map['tpc']!,
      l2: map['L2']!,
      threads: map['threads']!,
      l1: map['L1']!,
      smt: map['smt']!,
      cores: map['cores']!,
      cache: map['cache']!,
      cpus: int.parse(map['cpus']!),
      l3: map['L3']!,
      description: map['desc']!,
      dies: map['dies']);

  factory CPUCoreInfo.fromJson(Map<String, dynamic> json) =>
      _$CPUCoreInfoFromJson(json);

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
