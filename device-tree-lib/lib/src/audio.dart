class InxiKeyAudio {
  static const String driver = 'driver';
  static const String classID = 'class-ID';
  static const String name = 'Device';
  static const String lanes = 'lanes';
  static const String version = 'v';
  static const String vendor = 'vendor';
  static const String speed = 'speed';
  static const String gen = 'gen';
  static const String busID = 'bus-ID';
  static const String chipID = 'chip-ID';
  static const String pcie = 'pcie';
  static const String type = 'type';

  static const String audioServerName = 'Sound Server';
  static const String running = 'running';
}

class UnexpectedAudioDeviceEntryException implements Exception {}

class AudioSummary {
  final Iterable<AudioServer> servers;
  final Iterable<PCIAudioDevice> pciAudioDevices;
  final Iterable<USBAudioDevice> usbAudioDevices;

  const AudioSummary(this.servers, this.pciAudioDevices, this.usbAudioDevices);

  factory AudioSummary.fromMaps(Iterable<Map<String, dynamic>> maps) {
    List<AudioServer> audioServers = [];
    List<PCIAudioDevice> pciDevices = [];
    List<USBAudioDevice> usbDevices = [];

    for (var map in maps) {
      if (PCIAudioDevice.representsPCIAudioDevice(map)) {
        pciDevices.add(PCIAudioDevice.fromMap(map));
      } else if (USBAudioDevice.representsUSBAudioDevice(map)) {
        usbDevices.add(USBAudioDevice.fromMap(map));
      } else if (AudioServer.representsAudioServer(map)) {
        audioServers.add(AudioServer.fromMap(map));
      }
    }
    return AudioSummary(audioServers, pciDevices, usbDevices);
  }

  factory AudioSummary.fromReport(Map<String, dynamic> report) {
    final items = List<Map<String, dynamic>>.from(report['Audio']);
    return AudioSummary.fromMaps(items);
  }
}

abstract class AudioDevice {
  final String name;
  final String driver;
  final String classID;

  const AudioDevice(this.name, this.driver, this.classID);
}

class PCIAudioDevice extends AudioDevice {
  final int lanes;
  final int gen;
  final String pcie;

  const PCIAudioDevice(String name, String driver, String classID, this.lanes,
      this.gen, this.pcie)
      : super(name, driver, classID);

  factory PCIAudioDevice.fromMap(Map<String, dynamic> map) {
    return PCIAudioDevice(
        map[InxiKeyAudio.name],
        map[InxiKeyAudio.driver],
        map[InxiKeyAudio.classID],
        int.parse(map[InxiKeyAudio.lanes]),
        map[InxiKeyAudio.gen],
        map[InxiKeyAudio.pcie]);
  }

  static bool representsPCIAudioDevice(Map<String, dynamic> map) {
    return map.keys.any((k) => PCIAudioDevice._expectedKeys.contains(k));
  }

  static final Set<String> _expectedKeys = {
    InxiKeyAudio.lanes,
    InxiKeyAudio.gen,
    InxiKeyAudio.pcie
  };
}

class USBAudioDevice extends AudioDevice {
  final String? version;
  final String? vendor;
  final String? speed;
  final String busID;
  final String chipID;

  const USBAudioDevice(String name, String driver, String classID, this.version,
      this.vendor, this.speed, this.busID, this.chipID)
      : super(name, driver, classID);

  factory USBAudioDevice.fromMap(Map<String, dynamic> map) {
    return USBAudioDevice(
        map[InxiKeyAudio.name],
        map[InxiKeyAudio.driver],
        map[InxiKeyAudio.classID],
        map[InxiKeyAudio.version],
        map[InxiKeyAudio.vendor],
        map[InxiKeyAudio.speed],
        map[InxiKeyAudio.busID],
        map[InxiKeyAudio.chipID]);
  }

  static bool representsUSBAudioDevice(Map<String, dynamic> map) {
    return map[InxiKeyAudio.type] == 'USB';
  }
}

class AudioServer {
  final String name;
  final bool running;
  final String version;

  const AudioServer(this.name, this.running, this.version);

  factory AudioServer.fromMap(Map<String, dynamic> map) {
    return AudioServer(map[InxiKeyAudio.audioServerName]!,
        map[InxiKeyAudio.running]! == "yes", map[InxiKeyAudio.version]!);
  }

  static bool representsAudioServer(Map<String, dynamic> map) {
    return map[InxiKeyAudio.audioServerName] != null;
  }
}
