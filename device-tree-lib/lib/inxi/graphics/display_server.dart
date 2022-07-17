import 'package:device_tree_lib/inxi/graphics/graphics_keys.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'display_server.freezed.dart';
part 'display_server.g.dart';

@freezed
class DisplayServer with _$DisplayServer implements TreeNodeRepresentable {
  const DisplayServer._();

  factory DisplayServer(
      {required String driver,
      String? loaded,
      required String version,
      required String screens,
      required String gpu,
      String? X,
      required String server,
      required String display,
      String? unloaded,
      required String displayID,
      required String compositor}) = _DisplayServer;

  factory DisplayServer.fromMap(Map<String, dynamic> map) => DisplayServer(
      driver: map[InxiKeyGraphics.driver]!,
      loaded: map[InxiKeyGraphics.loaded],
      version: map[InxiKeyGraphics.version]!,
      screens: map[InxiKeyGraphics.screens]!,
      gpu: map[InxiKeyGraphics.gpu]!,
      X: map[InxiKeyGraphics.x],
      server: map[InxiKeyGraphics.server]!,
      display: map[InxiKeyGraphics.display]!,
      unloaded: map[InxiKeyGraphics.unloaded],
      displayID: map[InxiKeyGraphics.displayID]!,
      compositor: map[InxiKeyGraphics.compositor]!);

  factory DisplayServer.fromJson(Map<String, dynamic> json) =>
      _$DisplayServerFromJson(json);

  static bool representsDisplayServer(Map<String, dynamic> map) {
    return map[InxiKeyGraphics.compositor] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "Display server",
        data: this,
        label: "$server ($display, gpu: $gpu, compositor: $compositor)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
