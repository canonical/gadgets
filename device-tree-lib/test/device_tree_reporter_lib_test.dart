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
    });
  });
}
