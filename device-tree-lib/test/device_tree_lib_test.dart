import 'package:device_tree_lib/all.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final reporter =
        DeviceTreeParser.fromInxiReport("./test/fixture/inxi-athena.json");

    setUp(() {
      // Additional setup goes here.
    });

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
        "runlevel": 5,
        "gcc": "11.2.0",
        "default": "Bash",
        "wakeups": 8
      };

      var deviceInfo = DeviceInfo.fromMap(map);
      expect(deviceInfo.tool, map["tool"]);
      expect(deviceInfo.uptime, map["Uptime"]);
      expect(deviceInfo.shell, map["Shell"]);
      expect(deviceInfo.clangVersion, map["clang"]);
      expect(deviceInfo.version, map["v"]);
      expect(deviceInfo.inxiVersion, map["inxi"]);
      expect(deviceInfo.runLevel, map["runlevel"]);
      expect(deviceInfo.initSystem, map["Init"]);
      expect(deviceInfo.runLevel, map["runlevel"]);
      expect(deviceInfo.gccVersion, map["gcc"]);
      expect(deviceInfo.defaultShell, map["default"]);
      expect(deviceInfo.wakeups, map["wakeups"]);
    });
  });
}
