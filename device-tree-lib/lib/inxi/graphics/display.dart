import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'graphics_keys.dart';

part 'display.freezed.dart';
part 'display.g.dart';

@freezed
class Display with _$Display implements TreeNodeRepresentable {
  const Display._();

  factory Display(
      {required String resolution,
      double? dpi,
      required String monitor,
      required String size,
      required int hz,
      required String? diagonal}) = _Display;

  factory Display.fromMap(Map<String, dynamic> map) {
    final rawDPI = map[InxiKeyGraphics.displayDPI];
    return Display(
        resolution: map[InxiKeyGraphics.displayResolution],
        dpi: rawDPI != null ? double.parse(rawDPI) : null,
        monitor: map[InxiKeyGraphics.monitor],
        size: map[InxiKeyGraphics.displaySize],
        hz: int.parse(map[InxiKeyGraphics.hz]),
        diagonal: map[InxiKeyGraphics.displayDiagonal]);
  }

  factory Display.fromJson(Map<String, dynamic> json) =>
      _$DisplayFromJson(json);

  static bool representsDisplay(Map<String, dynamic> map) {
    return map[InxiKeyGraphics.monitor] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "Monitor $monitor",
        data: this,
        label: "resolution: $resolution ($hz), dpi: $dpi");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
