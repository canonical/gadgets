class CPUSummary {
  final CPU cpu;
  final CPUCoreInfo coreInfo;
  final CompilerFlags flags;
  final CPUCoreFrequencyInfo coreFrequencyInfo;

  CPUSummary(this.cpu, this.coreInfo, this.flags, this.coreFrequencyInfo);

  factory CPUSummary.fromReport(Map<String, dynamic> reportMap) {
    final cpuSummaryMaps = reportMap['CPU']!;
    final cpu = CPU.fromMap(
        cpuSummaryMaps.firstWhere((element) => CPU.isRepresentation(element)));
    final core = CPUCoreInfo.fromMap(cpuSummaryMaps
        .firstWhere((element) => CPUCoreInfo.isRepresentation(element)));
    final flags = CompilerFlags.fromMap(cpuSummaryMaps
        .firstWhere((element) => CompilerFlags.isRepresentation(element)));
    final coreFrequencyInfo = CPUCoreFrequencyInfo.fromMap(
        cpuSummaryMaps.firstWhere(
            (element) => CPUCoreFrequencyInfo.isRepresentation(element)));

    return CPUSummary(cpu, core, flags, coreFrequencyInfo);
  }
}

class CPU {
  final String family;
  final int stepping;
  final String microcode;
  final String model;
  final String modelID;
  final String type;
  final int bits;
  final String architecture;
  final String socket;

  CPU(this.family, this.stepping, this.microcode, this.model, this.modelID,
      this.type, this.bits, this.architecture, this.socket);

  factory CPU.fromMap(Map<String, dynamic> map) {
    return CPU(
        map['family']!,
        int.parse(map['stepping']!),
        map['microcode']!,
        map['model']!,
        map['model-id']!,
        map['type']!,
        map['bits']!,
        map['arch']!,
        map['socket']!);
  }

  static bool isRepresentation(Map<String, dynamic> map) {
    return map['model'] != null;
  }
}

class CPUCoreInfo {
  final int tpc;
  final String l2;
  final int threads;
  final String l1;
  final String smt;
  final int cores;
  final String cache;
  final int cpus;
  final String l3;
  final String description;

  CPUCoreInfo(this.tpc, this.l2, this.threads, this.l1, this.smt, this.cores,
      this.cache, this.cpus, this.l3, this.description);

  factory CPUCoreInfo.fromMap(Map<String, dynamic> map) {
    return CPUCoreInfo(
        map['tpc']!,
        map['L2']!,
        map['threads']!,
        map['L1']!,
        map['smt']!,
        map['cores']!,
        map['cache']!,
        int.parse(map['cpus']!),
        map['L3']!,
        map['desc']!);
  }

  static bool isRepresentation(Map<String, dynamic> map) {
    return map['L1'] != null;
  }
}

class CPUCoreFrequencyInfo {
  final String minMax;
  final String driver;
  final int avg;
  final String boost;
  final String extClock;
  final String governor;
  final String volts;
  final int bogomips;
  final String baseBoost;

  final Iterable<int> coreFrequencies;

  CPUCoreFrequencyInfo(
      this.minMax,
      this.driver,
      this.avg,
      this.boost,
      this.extClock,
      this.governor,
      this.volts,
      this.bogomips,
      this.baseBoost,
      this.coreFrequencies);

  factory CPUCoreFrequencyInfo.fromMap(Map<String, dynamic> map) {
    final freqs = <int>[];
    int i = 1;
    while (true) {
      final freq = map[i.toString()];
      if (freq == null) {
        break;
      }
      freqs.add(freq);
      i++;
    }
    return CPUCoreFrequencyInfo(
        map['min/max'],
        map['driver'],
        map['avg'],
        map['boost'],
        map['ext-clock'],
        map['governor'],
        map['volts'],
        map['bogomips'],
        map['base/boost'],
        freqs);
  }

  static bool isRepresentation(Map<String, dynamic> map) {
    return map['driver'] != null;
  }
}

class CompilerFlags {
  final String flags;

  CompilerFlags(this.flags);

  factory CompilerFlags.fromMap(Map<String, dynamic> map) {
    return CompilerFlags(map['Flags']);
  }

  static bool isRepresentation(Map<String, dynamic> map) {
    return map["Flags"] != null;
  }
}

class Vulnerability {
  final String status;
  final String type;
  final String? mitigation;

  Vulnerability(this.status, this.type, this.mitigation);

  factory Vulnerability.fromMap(Map<String, dynamic> map) {
    return Vulnerability(map['status']!, map['Type']!, map['mitigation']);
  }

  static bool isRepresentation(Map<String, dynamic> map) {
    return map['Type'] != null && map['status'] != null;
  }
}
