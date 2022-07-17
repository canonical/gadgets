// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usb_graphics_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_USBGraphicsDevice _$$_USBGraphicsDeviceFromJson(Map<String, dynamic> json) =>
    _$_USBGraphicsDevice(
      driver: json['driver'] as String,
      name: json['name'] as String,
      chipID: json['chipID'] as String,
      busID: json['busID'] as String,
      serial: json['serial'] as String,
      classID: json['classID'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_USBGraphicsDeviceToJson(
        _$_USBGraphicsDevice instance) =>
    <String, dynamic>{
      'driver': instance.driver,
      'name': instance.name,
      'chipID': instance.chipID,
      'busID': instance.busID,
      'serial': instance.serial,
      'classID': instance.classID,
      'type': instance.type,
    };
