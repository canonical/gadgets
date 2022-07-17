import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu_compiler_flags.freezed.dart';
part 'cpu_compiler_flags.g.dart';

@freezed
class CPUCompilerFlags
    with _$CPUCompilerFlags
    implements TreeNodeRepresentable {
  const CPUCompilerFlags._();

  factory CPUCompilerFlags({required String flags}) = _CPUCompilerFlags;

  factory CPUCompilerFlags.fromMap(Map<String, dynamic> map) =>
      CPUCompilerFlags(flags: map['Flags']);

  factory CPUCompilerFlags.fromJson(Map<String, dynamic> json) =>
      _$CPUCompilerFlagsFromJson(json);

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
