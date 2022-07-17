import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'graphics_keys.dart';

part 'screen.freezed.dart';
part 'screen.g.dart';

@freezed
class Screen with _$Screen implements TreeNodeRepresentable {
  const Screen._();

  factory Screen(
      {required double dpi,
      required int screen,
      required String resolution,
      required String diagonal,
      required String size}) = _Screen;

  factory Screen.fromMap(Map<String, dynamic> map) => Screen(
      dpi: double.parse(map[InxiKeyGraphics.screenDPI]),
      screen: int.parse(map[InxiKeyGraphics.screen]),
      resolution: map[InxiKeyGraphics.screenResolution]!,
      diagonal: map[InxiKeyGraphics.screenDiagonal]!,
      size: map[InxiKeyGraphics.screenSize]!);

  factory Screen.fromJson(Map<String, dynamic> json) => _$ScreenFromJson(json);

  static bool representsScreen(Map<String, dynamic> map) {
    return map[InxiKeyGraphics.screen] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "Screen $screen",
        data: this,
        label: "$resolution (dpi:$dpi, size: $size)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
