// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usb_audio_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_USBAudioDevice _$$_USBAudioDeviceFromJson(Map<String, dynamic> json) =>
    _$_USBAudioDevice(
      name: json['name'] as String,
      driver: json['driver'] as String,
      type: json['type'] as String,
      classID: json['classID'] as String?,
      version: json['version'] as String?,
      vendor: json['vendor'] as String?,
      speed: json['speed'] as String?,
      busID: json['busID'] as String?,
      chipID: json['chipID'] as String?,
    );

Map<String, dynamic> _$$_USBAudioDeviceToJson(_$_USBAudioDevice instance) =>
    <String, dynamic>{
      'name': instance.name,
      'driver': instance.driver,
      'type': instance.type,
      'classID': instance.classID,
      'version': instance.version,
      'vendor': instance.vendor,
      'speed': instance.speed,
      'busID': instance.busID,
      'chipID': instance.chipID,
    };
