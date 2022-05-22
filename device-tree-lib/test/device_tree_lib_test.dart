import 'package:device_tree_lib/all.dart';
import 'package:device_tree_lib/src/memory.dart';
import 'package:test/test.dart';

void main() {
  group('Device tree parser tests', () {
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

    test('USB device info', () {
      const usbDeviceMaps = [
        {
          "rev": "2.0",
          "speed": "480 Mb/s",
          "chip-ID": "1d6b:0002",
          "Hub": "1-0:1",
          "info": "Hi-speed hub with single TT",
          "ports": "14",
          "class-ID": "0900"
        },
        {
          "info": "Logitech StreamCam",
          "class-ID": "0300",
          "type": "Video,Audio,HID",
          "serial": "A1071525",
          "chip-ID": "046d:0893",
          "speed": "480 Mb/s",
          "driver": "hid-generic,snd-usb-audio,usbhid,uvcvideo",
          "rev": "2.1",
          "interfaces": "6",
          "power": "500mA",
          "Device": "1-2:2"
        }
      ];

      var devices = usbDeviceMaps.map((m) => USBDevice.fromMap(m));
      expect(devices.length, 2);
    });

    test('Memory info parsing', () {
      const dynamic memoryCapacitySummaryMap = {
        "total": "94.25 GiB",
        "used": "22.97 GiB (24.4%)",
        "RAM": ""
      };

      const dynamic memorySlotSummaryMap = {
        "note": "est.",
        "max-module-size": "64 GiB",
        "slots": 8,
        "EC": "None",
        "capacity": "512 GiB",
        "Array": ""
      };

      const dynamic filledMemorySlotMap = {
        "part-no": "CMK16GX4M2B3000C15",
        "total": "64 bits",
        "Device": "DIMM 0",
        "bus-width": "64 bits",
        "serial": "N/A",
        "size": "8 GiB",
        "manufacturer": "Corsair",
        "speed": "2133 MT/s",
        "type": "DDR4",
        "detail": "synchronous unbuffered (unregistered)"
      };

      var memoryCapacity = MemoryCapacity.fromMap(memoryCapacitySummaryMap);
      expect(memoryCapacity.total, '94.25 GiB');
      expect(memoryCapacity.used, '22.97 GiB (24.4%)');
      expect(memoryCapacity.ram, '');
    });
  });
}
