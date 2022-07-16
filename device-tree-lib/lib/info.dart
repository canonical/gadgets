import 'package:device_tree_lib/detail_node.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

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

class DeviceInfo implements TreeNodeRepresentable {
  final String? tool;
  final String uptime;
  final String shell;
  final String clangVersion;
  final String version; // not sure which version this is?
  final String inxiVersion;
  final String initSystem;
  final int? runLevel;
  final String gccVersion;
  final String? defaultShell;
  final int? wakeups;

  const DeviceInfo(
      this.tool,
      this.uptime,
      this.shell,
      this.clangVersion,
      this.version,
      this.inxiVersion,
      this.initSystem,
      this.runLevel,
      this.gccVersion,
      this.defaultShell,
      this.wakeups);

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

    return DeviceInfo(tool, uptime, shell, clang, version, inxiVersion,
        initSystem, runLevel, gccVersion, defaultShell, wakeups);
  }

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
