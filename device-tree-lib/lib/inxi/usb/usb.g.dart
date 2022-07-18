// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usb.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_USBSummary _$$_USBSummaryFromJson(Map<String, dynamic> json) =>
    _$_USBSummary(
      devices: (json['devices'] as List<dynamic>)
          .map((e) => USBDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_USBSummaryToJson(_$_USBSummary instance) =>
    <String, dynamic>{
      'devices': instance.devices.map((e) => e.toJson()).toList(),
    };

_$_USBDevice _$$_USBDeviceFromJson(Map<String, dynamic> json) => _$_USBDevice(
      revision: json['revision'] as String,
      speed: json['speed'] as String,
      chipID: json['chipID'] as String,
      hub: json['hub'] as String?,
      info: json['info'] as String,
      ports: json['ports'] as int?,
      classID: json['classID'] as String,
      type: json['type'] as String?,
      serial: json['serial'] as String?,
      driver: json['driver'] as String?,
      interfaces: json['interfaces'] as String?,
      power: json['power'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_USBDeviceToJson(_$_USBDevice instance) =>
    <String, dynamic>{
      'revision': instance.revision,
      'speed': instance.speed,
      'chipID': instance.chipID,
      'hub': instance.hub,
      'info': instance.info,
      'ports': instance.ports,
      'classID': instance.classID,
      'type': instance.type,
      'serial': instance.serial,
      'driver': instance.driver,
      'interfaces': instance.interfaces,
      'power': instance.power,
      'name': instance.name,
    };
