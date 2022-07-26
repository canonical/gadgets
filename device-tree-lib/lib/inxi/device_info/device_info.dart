import 'package:device_tree_lib/presentation/detail_node.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:developer';

part 'device_info.freezed.dart';
part 'device_info.g.dart';

class DeviceInfoInxiKey {
  static final String tool = "tool";
  static final String uptime = "Uptime";
  static final String shell = "Shell";
  static final String clang = "clang";
  static final String version = "v";
  static final String inxiVersion = "inxi";
  static final String initSystem = "Init";
  static final String runLevel = "runlevel";
  static final String gccVersion = "gcc";
  static final String defaultShell = "default";
  static final String wakeups = "wakeups";
}

@freezed
class DeviceInfo with _$DeviceInfo implements TreeNodeRepresentable {
  const DeviceInfo._();

  factory DeviceInfo(
      {String? tool,
      required String uptime,
      required String shell,
      required String clangVersion,
      required String version,
      required String inxiVersion,
      required String initSystem,
      int? runLevel,
      required String gccVersion,
      String? defaultShell,
      int? wakeups}) = _DeviceInfo;

  factory DeviceInfo.fromReport(Map<String, dynamic> report) {
    return DeviceInfo.fromMap(report["Info"]!.first);
  }

  factory DeviceInfo.fromMap(Map<String, dynamic> map) {
    // TODO: handle an alternative key "inxi" for "tool".
    var tool = map[DeviceInfoInxiKey.tool] as String?;
    var uptime = map[DeviceInfoInxiKey.uptime] as String;
    var shell = map[DeviceInfoInxiKey.shell] as String;
    var clang = map[DeviceInfoInxiKey.clang] as String;
    var version = map[DeviceInfoInxiKey.version] as String;
    var inxiVersion = map[DeviceInfoInxiKey.inxiVersion] as String;
    var initSystem = map[DeviceInfoInxiKey.initSystem] as String;

    var runLevel = map[DeviceInfoInxiKey.runLevel] != null
        ? int.parse(map[DeviceInfoInxiKey.runLevel])
        : null;

    var gccVersion = map[DeviceInfoInxiKey.gccVersion] as String;
    var defaultShell = map[DeviceInfoInxiKey.defaultShell] as String?;

    final rawWakeups = map[DeviceInfoInxiKey.wakeups];
    var wakeups =
        rawWakeups != null ? int.parse(map[DeviceInfoInxiKey.wakeups]) : null;

    return DeviceInfo(
        tool: tool,
        uptime: uptime,
        shell: shell,
        clangVersion: clang,
        version: version,
        inxiVersion: inxiVersion,
        initSystem: initSystem,
        runLevel: runLevel,
        gccVersion: gccVersion,
        defaultShell: defaultShell,
        wakeups: wakeups);
  }

  factory DeviceInfo.fromJson(Map<String, dynamic> json) =>
      _$DeviceInfoFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
      id: "OS info",
      data: this,
      // label:
      //    "uptime: $uptime, shell: $shell, clang: $clangVersion, gcc: $gccVersion, wakeups: $wakeups");
    );
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [
      Detail(parent: this, key: "uptime", value: uptime),
      Detail(
          parent: this, key: "shell", value: "$shell (default: $defaultShell)"),
      Detail(parent: this, key: "gcc version", value: gccVersion),
      Detail(parent: this, key: "clang version", value: clangVersion),
      Detail(parent: this, key: "version", value: version),
      Detail(parent: this, key: "# system wakeups", value: wakeups),
      Detail(
          parent: this, key: "init system", value: "$initSystem ($runLevel)"),
    ];
  }
}
