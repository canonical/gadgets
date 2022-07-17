import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'graphics_keys.dart';

part 'display_renderer.freezed.dart';
part 'display_renderer.g.dart';

@freezed
class DisplayRenderer with _$DisplayRenderer implements TreeNodeRepresentable {
  const DisplayRenderer._();

  factory DisplayRenderer(
      {required bool directRender,
      required String renderer,
      required String version,
      required String openGL}) = _DisplayRenderer;

  factory DisplayRenderer.fromMap(Map<String, dynamic> map) => DisplayRenderer(
      directRender: map[InxiKeyGraphics.directRender]! == 'Yes',
      renderer: map[InxiKeyGraphics.renderer]!,
      version: map[InxiKeyGraphics.version]!,
      openGL: map[InxiKeyGraphics.openGL]!);

  factory DisplayRenderer.fromJson(Map<String, dynamic> json) =>
      _$DisplayRendererFromJson(json);

  static bool representsDisplayRenderer(Map<String, dynamic> map) {
    return map[InxiKeyGraphics.renderer] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: renderer,
        data: this,
        label:
            "direct render: $directRender, version: $version, OpenGL: $openGL");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
