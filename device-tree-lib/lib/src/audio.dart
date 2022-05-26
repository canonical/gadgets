class InxiKeyAudio {
  static const String driver = 'driver';
  static const String classID = 'class-ID';
  static const String device = 'Device';
  static const String lanes = 'lanes';
  static const String version = 'v';
  static const String vendor = 'vendor';
  static const String speed = 'speed';
  static const String gen = 'gen';
  static const String busID = 'bus-ID';
  static const String chipID = 'chip-ID';
  static const String pcie = 'pcie';

  static const String audioServerName = 'Audio Server';
  static const String running = 'running';
}

class AudioSummary {
  final Iterable<AudioServer> servers;
  final Iterable<AudioDevice> devices;

  AudioSummary(this.servers, this.devices);
}

class AudioDevice {
  final String device;
  final String driver;
  final String classID;
}

class PCIAudioDevice extends AudioDevice {
  final int lanes;
  final int gen;
  final String pcie;
}

class USBAudioDevice extends AudioDevice {
  final String version;
  final String vendor;
  final String speed;
  final String busID;
  final String chipID;
}

class AudioServer {
  final String name;
  final bool running;
  final String version;

  AudioServer(this.name, this.running, this.version);

  factory AudioServer.fromMap(Map<String, dynamic> map) {
    return AudioServer(map[InxiKeyAudio.audioServerName]!,
        map[InxiKeyAudio.running]!, map[InxiKeyAudio.version]!);
  }
}

/*
{
  "Audio": [
    {
      "driver": "snd_hda_intel",
      "class-ID": "0403",
      "Device": "AMD Family 17h HD Audio",
      "lanes": "16",
      "v": "kernel",
      "vendor": "ASRock",
      "speed": "8 GT/s",
      "gen": 3,
      "bus-ID": "0a:00.3",
      "chip-ID": "1022:1457",
      "pcie": ""
    },
    {
      "gen": 4,
      "link-max": "",
      "vendor": "Micro-Star MSI",
      "lanes": "16",
      "Device": "NVIDIA GA102 High Definition Audio",
      "v": "kernel",
      "speed": "8 GT/s",
      "class-ID": "0403",
      "bus-ID": "43:00.1",
      "chip-ID": "10de:1aef",
      "driver": "snd_hda_intel",
      "pcie": ""
    },
    {
      "serial": "A1071525",
      "class-ID": "0300",
      "type": "USB",
      "Device": "Logitech StreamCam",
      "driver": "hid-generic,snd-usb-audio,usbhid,uvcvideo",
      "bus-ID": "1-2:2",
      "chip-ID": "046d:0893"
    },
    {
      "bus-ID": "1-4:5",
      "chip-ID": "0c60:001b",
      "Device": "Apogee MiC 96k",
      "driver": "snd-usb-audio",
      "type": "USB",
      "class-ID": "0102"
    },
    {
      "Sound Server": "ALSA",
      "running": "yes",
      "v": "k5.15.0-33-generic"
    },
    {
      "running": "no",
      "Sound Server": "PulseAudio",
      "v": "15.99.1"
    },
    {
      "Sound Server": "PipeWire",
      "v": "0.3.48",
      "running": "yes"
    }
  ]
}
*/