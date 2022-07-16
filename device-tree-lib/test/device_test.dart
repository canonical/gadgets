import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:test/test.dart';
import 'dart:convert';
import 'dart:io';

File report = File('./test/fixture/inxi-athena.json');
late final Map<String, dynamic> parsedReport;
void main() {
  setUpAll(
      (() async => parsedReport = json.decode(await report.readAsString())));
  group('Device tree parser tests', () {
    final reporter =
        DeviceTreeParser.fromInxiReport("./test/fixture/inxi-athena.json");

    test('Test inxi report parsing', () {
      reporter.parse();
      // expect(reporter.reportPath, isTrue);
    });

    test('Device info parsing', () {
      const Map<String, dynamic> map = {
        "tool": "systemctl",
        "Uptime": "12h 29m",
        "Shell": "Sudo (sudo)",
        "clang": "14.0.0-1ubuntu1",
        "v": "5.1.16",
        "Compilers": "",
        "inxi": "3.3.13",
        "Processes": 999,
        "running-in": "run-inxi",
        "alt": "11",
        "Init": "systemd",
        "runlevel": "5",
        "gcc": "11.2.0",
        "default": "Bash",
        "wakeups": "8"
      };

      var deviceInfo = DeviceInfo.fromMap(map);
      expect(deviceInfo.tool, map["tool"]);
      expect(deviceInfo.uptime, map["Uptime"]);
      expect(deviceInfo.shell, map["Shell"]);
      expect(deviceInfo.clangVersion, map["clang"]);
      expect(deviceInfo.version, map["v"]);
      expect(deviceInfo.inxiVersion, map["inxi"]);
      expect(deviceInfo.runLevel, int.parse(map["runlevel"]));
      expect(deviceInfo.initSystem, map["Init"]);
      expect(deviceInfo.gccVersion, map["gcc"]);
      expect(deviceInfo.defaultShell, map["default"]);
      expect(deviceInfo.wakeups, int.parse(map["wakeups"]));
    });
  });
}
