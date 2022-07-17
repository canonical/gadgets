import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'audio_keys.dart';

part 'audio_server.freezed.dart';
part 'audio_server.g.dart';

@freezed
class AudioServer with _$AudioServer implements TreeNodeRepresentable {
  const AudioServer._();

  factory AudioServer(
      {required String name,
      required bool running,
      required String version}) = _AudioServer;

  factory AudioServer.fromMap(Map<String, dynamic> map) {
    return AudioServer(
        name: map[InxiKeyAudio.audioServerName]!,
        running: map[InxiKeyAudio.running]! == "yes",
        version: map[InxiKeyAudio.version]!);
  }

  factory AudioServer.fromJson(Map<String, dynamic> json) =>
      _$AudioServerFromJson(json);

  static bool representsAudioServer(Map<String, dynamic> map) {
    return map[InxiKeyAudio.audioServerName] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: name, data: this, label: "$version, running: $running");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
