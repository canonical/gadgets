import 'package:test/test.dart';
import 'dart:core';
import 'dart:io';
import 'dart:convert';

import 'package:device_tree_lib/all.dart';

File report = File('./test/fixture/inxi-athena.json');
late final Map<String, dynamic> parsedReport;

const audioMap = {
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
    {"Sound Server": "ALSA", "running": "yes", "v": "k5.15.0-33-generic"},
    {"running": "no", "Sound Server": "PulseAudio", "v": "15.99.1"},
    {"Sound Server": "PipeWire", "v": "0.3.48", "running": "yes"}
  ]
};

void main() {
  setUpAll(
      (() async => parsedReport = json.decode(await report.readAsString())));

  group('Test audio device info parsing', () {
    test('Parse audio summary from an Inxi report-like map', () {
      final summary = AudioSummary.fromReport(audioMap);
      expect(summary.pciAudioDevices.length, 2);
      expect(summary.usbAudioDevices.length, 2);
      expect(summary.servers.length, 2);
    });

    test('Parse audio summary from an Inxi report file', () {
      final audioSummary = AudioSummary.fromReport(parsedReport);
      expect(audioSummary.pciAudioDevices.length, 2);
      expect(audioSummary.usbAudioDevices.length, 2);
    });
  });
}
