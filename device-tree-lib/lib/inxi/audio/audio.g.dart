// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AudioSummary _$$_AudioSummaryFromJson(Map<String, dynamic> json) =>
    _$_AudioSummary(
      servers: (json['servers'] as List<dynamic>)
          .map((e) => AudioServer.fromJson(e as Map<String, dynamic>))
          .toList(),
      pciAudioDevices: (json['pciAudioDevices'] as List<dynamic>)
          .map((e) => PCIAudioDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usbAudioDevices: (json['usbAudioDevices'] as List<dynamic>)
          .map((e) => USBAudioDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AudioSummaryToJson(_$_AudioSummary instance) =>
    <String, dynamic>{
      'servers': instance.servers.map((e) => e.toJson()).toList(),
      'pciAudioDevices':
          instance.pciAudioDevices.map((e) => e.toJson()).toList(),
      'usbAudioDevices':
          instance.usbAudioDevices.map((e) => e.toJson()).toList(),
    };
