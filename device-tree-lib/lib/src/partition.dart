class _InxiKeyPartition {
  static const String majorMinor = "maj-min";
  static const String blockSize = 'block-size';
  static const String device = 'dev';
  static const String rawSize = 'raw-size';
  static const String uuid = 'uuid';
  static const String size = 'size';
  static const String used = 'used';
  static const String label = 'label';
  static const String id = 'ID';
  static const String fs = 'fs';
  static const String mapped = 'mapped';
}

class PartitionSummary {
  Iterable<Partition> partitions;
  PartitionSummary(this.partitions);

  factory PartitionSummary.fromReport(
      Map<String, List<Map<String, dynamic>>> report) {
    return PartitionSummary(Partition.fromReport(report));
  }
}

class Partition {
  final String majorMinor;
  final String blockSize;
  final String device;
  final String rawSize;
  final String uuid;
  final String size;
  final String used;
  final String label;
  final String id;
  final String fs;
  final String mapped;

  Partition(
      this.majorMinor,
      this.blockSize,
      this.device,
      this.rawSize,
      this.uuid,
      this.size,
      this.used,
      this.label,
      this.id,
      this.fs,
      this.mapped);

  factory Partition.fromMap(Map<String, dynamic> map) {
    return Partition(
        map[_InxiKeyPartition.majorMinor]!,
        map[_InxiKeyPartition.blockSize]!,
        map[_InxiKeyPartition.device]!,
        map[_InxiKeyPartition.rawSize]!,
        map[_InxiKeyPartition.uuid]!,
        map[_InxiKeyPartition.size]!,
        map[_InxiKeyPartition.used]!,
        map[_InxiKeyPartition.label]!,
        map[_InxiKeyPartition.id]!,
        map[_InxiKeyPartition.fs]!,
        map[_InxiKeyPartition.mapped]!);
  }

  static Iterable<Partition> fromReport(
      Map<String, List<Map<String, dynamic>>> reportMap) {
    return reportMap["Partition"]!.map((p) => Partition.fromMap(p));
  }
}
