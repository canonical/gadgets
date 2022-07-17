import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:unicons/unicons.dart';

import 'audio_server.dart';
import 'pci_audio_device.dart';
import 'usb_audio_device.dart';

part 'audio.freezed.dart';
part 'audio.g.dart';

class UnexpectedAudioDeviceEntryException implements Exception {}

@freezed
class AudioSummary
    with _$AudioSummary
    implements TreeNodeRepresentable, WithIcon {
  const AudioSummary._();

  factory AudioSummary(
      {required List<AudioServer> servers,
      required List<PCIAudioDevice> pciAudioDevices,
      required List<USBAudioDevice> usbAudioDevices}) = _AudioSummary;

  factory AudioSummary.fromMaps(Iterable<Map<String, dynamic>> maps) {
    List<AudioServer> audioServers = [];
    List<PCIAudioDevice> pciDevices = [];
    List<USBAudioDevice> usbDevices = [];

    for (final map in maps) {
      if (PCIAudioDevice.representsPCIAudioDevice(map)) {
        pciDevices.add(PCIAudioDevice.fromMap(map));
      } else if (USBAudioDevice.representsUSBAudioDevice(map)) {
        usbDevices.add(USBAudioDevice.fromMap(map));
      } else if (AudioServer.representsAudioServer(map)) {
        audioServers.add(AudioServer.fromMap(map));
      }
    }
    return AudioSummary(
        servers: audioServers,
        pciAudioDevices: pciDevices,
        usbAudioDevices: usbDevices);
  }

  factory AudioSummary.fromReport(Map<String, dynamic> report) {
    final items = List<Map<String, dynamic>>.from(report['Audio']);
    return AudioSummary.fromMaps(items);
  }

  factory AudioSummary.fromJson(Map<String, dynamic> json) =>
      _$AudioSummaryFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "Audio", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    final children = [servers, pciAudioDevices, usbAudioDevices]
        .expand((element) => element);
    return children;
  }

  @override
  get iconData => UniconsLine.volume_off;
}
