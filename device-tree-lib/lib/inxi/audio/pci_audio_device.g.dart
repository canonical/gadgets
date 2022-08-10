// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pci_audio_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PCIAudioDevice _$$_PCIAudioDeviceFromJson(Map<String, dynamic> json) =>
    _$_PCIAudioDevice(
      name: json['name'] as String,
      driver: json['driver'] as String,
      type: json['type'] as String?,
      classID: json['classID'] as String?,
      lanes: json['lanes'] as int,
      gen: json['gen'] as int,
      pcie: json['pcie'] as String,
    );

Map<String, dynamic> _$$_PCIAudioDeviceToJson(_$_PCIAudioDevice instance) =>
    <String, dynamic>{
      'name': instance.name,
      'driver': instance.driver,
      'type': instance.type,
      'classID': instance.classID,
      'lanes': instance.lanes,
      'gen': instance.gen,
      'pcie': instance.pcie,
    };
