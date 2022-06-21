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

  factory DeviceInfo.fromReport(
      Map<String, List<Map<String, dynamic>>> report) {
    return DeviceInfo.fromMap(report["Info"]!.first);
  }

  factory DeviceInfo.fromMap(Map<String, dynamic> map) {
    var tool = map[DeviceInfoInxiKey.tool] as String;
    var uptime = map[DeviceInfoInxiKey.uptime] as String;
    var shell = map[DeviceInfoInxiKey.shell] as String;
    var clang = map[DeviceInfoInxiKey.clang] as String;
    var version = map[DeviceInfoInxiKey.version] as String;
    var inxiVersion = map[DeviceInfoInxiKey.inxiVersion] as String;
    var initSystem = map[DeviceInfoInxiKey.initSystem] as String;

    var runLevel = int.parse(map[DeviceInfoInxiKey.runLevel]);
    var gccVersion = map[DeviceInfoInxiKey.gccVersion] as String;
    var defaultShell = map[DeviceInfoInxiKey.defaultShell] as String;
    var wakeups = int.parse(map[DeviceInfoInxiKey.wakeups]);

    return DeviceInfo(tool, uptime, shell, clang, version, inxiVersion,
        initSystem, runLevel, gccVersion, defaultShell, wakeups);
  }
}
