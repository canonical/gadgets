import 'package:device_tree_lib/all.dart';
import 'package:device_tree_lib/src/memory.dart';
import 'package:test/test.dart';
import 'dart:convert';
import 'dart:io';

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

    test('Memory capacity info parsing', () {
      const dynamic memoryCapacitySummaryMap = {
        "total": "94.25 GiB",
        "used": "22.97 GiB (24.4%)",
        "RAM": ""
      };
      final memoryCapacity = MemoryCapacity.fromMap(memoryCapacitySummaryMap);
      expect(memoryCapacity.total, '94.25 GiB');
      expect(memoryCapacity.used, '22.97 GiB (24.4%)');
      expect(memoryCapacity.ram, '');
    });

    test('Memory slot summary parsing', () {
      const dynamic memorySlotSummaryMap = {
        "note": "est.",
        "max-module-size": "64 GiB",
        "slots": 8,
        "EC": "None",
        "capacity": "512 GiB",
        "Array": ""
      };

      final memorySlotSummary = MemorySlotSummary.fromMap(memorySlotSummaryMap);
      expect(memorySlotSummary.note, 'est.');
      expect(memorySlotSummary.maxModuleSize, '64 GiB');
      expect(memorySlotSummary.slots, 8);
      expect(memorySlotSummary.errorCorrection, 'None');
      expect(memorySlotSummary.capacity, '512 GiB');
      expect(memorySlotSummary.array, '');
    });

    test('Filled memory slot map', () {
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

      final memorySlotSummary = FilledMemorySlot.fromMap(filledMemorySlotMap);
      expect(memorySlotSummary.partNumber, 'CMK16GX4M2B3000C15');
      expect(memorySlotSummary.total, '64 bits');
      expect(memorySlotSummary.device, 'DIMM 0');
      expect(memorySlotSummary.busWidth, '64 bits');
      expect(memorySlotSummary.serial, 'N/A');
      expect(memorySlotSummary.size, '8 GiB');
      expect(memorySlotSummary.manufacturer, 'Corsair');
      expect(memorySlotSummary.speed, '2133 MT/s');
      expect(memorySlotSummary.type, 'DDR4');
      expect(memorySlotSummary.detail, 'synchronous unbuffered (unregistered)');

      final factoryMadMemorySlotSummary =
          MemorySlotFactory.fromMap(filledMemorySlotMap);
      expect(memorySlotSummary.runtimeType,
          factoryMadMemorySlotSummary.runtimeType);
    });

    test('Memory info from an inxi map', () async {
      File report = File('./test/fixture/inxi-athena.json');
      Map<String, dynamic> parsedReport =
          json.decode(await report.readAsString());
      Iterable<Map<String, dynamic>> memoryInfo =
          List<Map<String, dynamic>>.from(parsedReport['Memory']);
      Map<String, dynamic> capacity = memoryInfo.elementAt(0);
      Map<String, dynamic> slotSummary = memoryInfo.elementAt(1);
      Iterable<Map<String, dynamic>> slots = memoryInfo.skip(2);

      final memorySummary =
          MemorySummary.fromMaps(capacity, slotSummary, slots);

      final memorySummaryFromReportMap = MemorySummary.fromReport(parsedReport);
      // TODO: Do proper assertions for this (equality by JSON roundtrip?)
      expect(memorySummary.slots.length, 8);
      expect(
          memorySummary.capacity.ram, memorySummaryFromReportMap.capacity.ram);
      expect(memorySummary.capacity.total,
          memorySummaryFromReportMap.capacity.total);
      expect(memorySummary.slotSummary.capacity,
          memorySummaryFromReportMap.slotSummary.capacity);
      expect(memorySummary.slotSummary.errorCorrection,
          memorySummaryFromReportMap.slotSummary.errorCorrection);
    });
  });
}
