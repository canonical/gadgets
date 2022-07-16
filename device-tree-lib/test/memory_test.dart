import 'package:device_tree_lib/memory.dart';
import 'package:test/test.dart';
import 'dart:convert';
import 'dart:io';

File report = File('./test/fixture/inxi-athena.json');
late final Map<String, dynamic> parsedReport;
void main() {
  setUpAll(
      (() async => parsedReport = json.decode(await report.readAsString())));
  group('Device tree parser tests', () {
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
