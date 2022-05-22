import 'dart:core';

class InxiKeyMemoryCapacity {
  static final String total = 'total';
  static final String used = 'used';
  static final String ram = 'RAM'; // not sure what this is?
}

class InxiKeyMemorySlotSummary {
  static final String note = 'note';
  static final String maxModuleSize = 'max-module-size';
  static final String slots = 'slots';
  static final String ec = 'EC';
  static final String capacity = 'capacity';
  static final String array = 'Array'; // not really sure what this is?
}

class InxiKeyMemorySlot {
  static final String partNumber = 'part-no';
  static final String total = 'total';
  static final String device = 'Device';
  static final String busWidth = 'bus-width';
  static final String serial = 'serial';
  static final String size = 'size';
  static final String manufacturer = 'manufacturer';
  static final String speed = 'speed';
  static final String type = 'type';
  static final String detail = 'detail';
}

class MemorySummary {
  final MemoryCapacity capacity;
  final MemorySlotSummary slotSummary;
  final Iterable<MemorySlot> slots;

  MemorySummary(this.capacity, this.slotSummary, this.slots);

  factory MemorySummary.fromMaps(
      Map<String, String> capacityMap,
      Map<String, dynamic> slotSummaryMap,
      Iterable<Map<String, String>> slotsMaps) {
    return MemorySummary(
        MemoryCapacity.fromMap(capacityMap),
        MemorySlotSummary.fromMap(slotSummaryMap),
        slotsMaps.map((m) => MemorySlotFactory.fromMap(m)));
  }
}

class MemoryCapacity {
  final String total;
  final String used;
  final String ram;

  MemoryCapacity(this.total, this.used, this.ram);

  factory MemoryCapacity.fromMap(Map<String, String> map) {
    return MemoryCapacity(map[InxiKeyMemoryCapacity.total]!,
        map[InxiKeyMemoryCapacity.used]!, map[InxiKeyMemoryCapacity.ram]!);
  }
}

class MemorySlotSummary {
  MemorySlotSummary() {}
  factory MemorySlotSummary.fromMap(Map<String, dynamic> map) {
    return MemorySlotSummary();
  }
}

abstract class MemorySlot {
  abstract final String device;
}

class EmptyMemorySlot implements MemorySlot {
  @override
  final String device;

  EmptyMemorySlot(this.device);
  factory EmptyMemorySlot.fromMap(Map<String, String> map) {
    assert(map['size'] == 'No Module Installed');
    return EmptyMemorySlot(map[InxiKeyMemorySlot.device]!);
  }
}

class MemorySlotFactory {
  static fromMap(Map<String, String> map) {
    if (map[InxiKeyMemorySlot.size] == 'No Module Installed') {
      return EmptyMemorySlot.fromMap(map);
    } else {
      return FilledMemorySlot.fromMap(map);
    }
  }
}

class FilledMemorySlot extends MemorySlot {
  final String manufacturer;
  final String detail;
  final String speed;
  final String type;
  final String total;
  final String partNumber;
  final String size;
  final String serial;
  @override
  final String device;
  final String busWidth;

  FilledMemorySlot(
      this.manufacturer,
      this.detail,
      this.speed,
      this.type,
      this.total,
      this.partNumber,
      this.size,
      this.serial,
      this.busWidth,
      this.device);
  factory FilledMemorySlot.fromMap(Map<String, String> map) {
    return FilledMemorySlot(
        map[InxiKeyMemorySlot.manufacturer]!,
        map[InxiKeyMemorySlot.detail]!,
        map[InxiKeyMemorySlot.speed]!,
        map[InxiKeyMemorySlot.type]!,
        map[InxiKeyMemorySlot.total]!,
        map[InxiKeyMemorySlot.partNumber]!,
        map[InxiKeyMemorySlot.size]!,
        map[InxiKeyMemorySlot.serial]!,
        map[InxiKeyMemorySlot.device]!,
        map[InxiKeyMemorySlot.busWidth]!);
  }
}



/*

"Memory": [
    {
      "total": "94.25 GiB",
      "used": "22.97 GiB (24.4%)",
      "RAM": ""
    },
    {
      "note": "est.",
      "max-module-size": "64 GiB",
      "slots": 8,
      "EC": "None",
      "capacity": "512 GiB",
      "Array": ""
    },
    {
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
    },
    {
      "total": "64 bits",
      "part-no": "CMK64GX4M2E3200C16",
      "size": "32 GiB",
      "serial": "N/A",
      "bus-width": "64 bits",
      "Device": "DIMM 1",
      "manufacturer": "Corsair",
      "detail": "synchronous unbuffered (unregistered)",
      "speed": "2133 MT/s",
      "type": "DDR4"
    },
    {
      "total": "64 bits",
      "part-no": "CMK16GX4M2B3000C15",
      "bus-width": "64 bits",
      "Device": "DIMM 0",
      "serial": "N/A",
      "size": "8 GiB",
      "manufacturer": "Corsair",
      "detail": "synchronous unbuffered (unregistered)",
      "type": "DDR4",
      "speed": "2133 MT/s"
    },
    {
      "Device": "DIMM 1",
      "size": "No Module Installed"
    },
    {
      "manufacturer": "Corsair",
      "detail": "synchronous unbuffered (unregistered)",
      "speed": "2133 MT/s",
      "type": "DDR4",
      "total": "64 bits",
      "part-no": "CMK16GX4M2B3000C15",
      "size": "8 GiB",
      "serial": "N/A",
      "Device": "DIMM 0",
      "bus-width": "64 bits"
    },
    {
      "detail": "synchronous unbuffered (unregistered)",
      "type": "DDR4",
      "speed": "2133 MT/s",
      "manufacturer": "Corsair",
      "Device": "DIMM 1",
      "bus-width": "64 bits",
      "serial": "N/A",
      "size": "32 GiB",
      "total": "64 bits",
      "part-no": "CMK64GX4M2E3200C16"
    },
    {
      "speed": "2133 MT/s",
      "type": "DDR4",
      "detail": "synchronous unbuffered (unregistered)",
      "manufacturer": "Corsair",
      "Device": "DIMM 0",
      "bus-width": "64 bits",
      "size": "8 GiB",
      "serial": "N/A",
      "part-no": "CMK16GX4M2B3000C15",
      "total": "64 bits"
    },
    {
      "Device": "DIMM 1",
      "size": "No Module Installed"
    }
  ]

  */