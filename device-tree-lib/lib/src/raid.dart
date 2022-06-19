class RAIDSummary {
  Iterable<RAID> volumes;

  RAIDSummary(this.volumes);

  factory RAIDSummary.fromReport(
      Map<String, List<Map<String, dynamic>>> report) {
    final raidMaps = report['RAID']!;

    // TODO: Detect RAID volumes in a more sophisticated way.
    // filtering by count <= 2 removes reports of no RAID:
    // { "Message": "No RAID data found." }
    // ... and header entries like
    // { "Online": "N/A", "Components": "" }
    return RAIDSummary(
        raidMaps.where((e) => e.length > 2).map((e) => RAID.fromMap(e)));
  }
}

class RAID {
  final String free;
  final String status;
  final String level;
  final String device;
  final String allocated;
  final String size;
  final String type;

  RAID(this.free, this.status, this.level, this.device, this.allocated,
      this.size, this.type);

  factory RAID.fromMap(Map<String, dynamic> map) {
    return RAID(map['free'], map['status'], map['level'], map['Device'],
        map['allocated'], map['size'], map['type']);
  }
}
