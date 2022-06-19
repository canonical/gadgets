class CPUSummary {
  final CPU cpu;
  final CPUCache cache;
  final CompilerFlags flags;
  final CPUCoreFrequencyInfo coreFrequencyInfo;

  CPUSummary(this.cpu, this.cache, this.flags, this.coreFrequencyInfo);

  factory CPUSummary.fromReport(Map<String, List<Map<String, dynamic>>> map) {
    final cpuSummaryMap = map['CPU']!;
    for (final map in cpuSummaryMap) {}

    return CPUSummary(cpu, cache, flags, coreFrequencyInfo);
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

class CPUCache {
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

  CPUCache(this.tpc, this.l2, this.threads, this.l1, this.smt, this.cores,
      this.cache, this.cpus, this.l3, this.description);

  factory CPUCache.fromMap(Map<String, dynamic> map) {
    return CPUCache(
        map['tpc']!,
        map['L2']!,
        map['threads']!,
        map['L1']!,
        map['smt']!,
        map['cores']!,
        map['cache']!,
        map['cpus']!,
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
  final String avg;
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
    List<int> freqs = List.filled(0, 0);
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
        map['enabled'],
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
