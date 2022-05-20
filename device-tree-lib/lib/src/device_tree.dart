import 'dart:convert';
import 'dart:io';
import 'dart:core';

class ReportNotFoundError implements Exception {}

class MissingDeviceReportKeyException implements Exception {
  final String key;
  const MissingDeviceReportKeyException(this.key);
}

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

class DeviceInfo {
  final String tool;
  final String uptime;
  final String shell;
  final String clangVersion;
  final String version; // not sure which version this is?
  final String inxiVersion;
  final String initSystem;
  final int runLevel;
  final String gccVersion;
  final String defaultShell;
  final int wakeups;

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

  factory DeviceInfo.fromMap(Map<String, dynamic> map) {
    var tool = map[DeviceInfoInxiKey.tool] as String;
    var uptime = map[DeviceInfoInxiKey.uptime] as String;
    var shell = map[DeviceInfoInxiKey.shell] as String;
    var clang = map[DeviceInfoInxiKey.clang] as String;
    var version = map[DeviceInfoInxiKey.version] as String;
    var inxiVersion = map[DeviceInfoInxiKey.inxiVersion] as String;
    var initSystem = map[DeviceInfoInxiKey.initSystem] as String;
    var runLevel = map[DeviceInfoInxiKey.runLevel] as int;
    var gccVersion = map[DeviceInfoInxiKey.gccVersion] as String;
    var defaultShell = map[DeviceInfoInxiKey.defaultShell] as String;
    var wakeups = map[DeviceInfoInxiKey.wakeups] as int;

    return DeviceInfo(tool, uptime, shell, clang, version, inxiVersion,
        initSystem, runLevel, gccVersion, defaultShell, wakeups);
  }
}

final String inxiKeyInfo = "Info";

class DeviceTree {
  final DeviceInfo info;

  const DeviceTree(this.info);

  factory DeviceTree.fromMap(Map<String, dynamic> map) {
    Map<String, dynamic>? infoMap = map[inxiKeyInfo];
    if (infoMap == null) {
      throw MissingDeviceReportKeyException(inxiKeyInfo);
    }
    return DeviceTree(DeviceInfo.fromMap(infoMap));
  }
}

class DeviceTreeParser {
  File report;

  DeviceTreeParser(this.report);

  factory DeviceTreeParser.fromInxiReport(String reportPath) {
    var file = File(reportPath);
    return DeviceTreeParser(file);
  }

  void parse() async {
    Object parsedReport = json.decode(await report.readAsString());
  }
}
