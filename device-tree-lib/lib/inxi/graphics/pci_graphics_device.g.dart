// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pci_graphics_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PCIGraphicsDevice _$$_PCIGraphicsDeviceFromJson(Map<String, dynamic> json) =>
    _$_PCIGraphicsDevice(
      linkMax: json['linkMax'] as String,
      alternativeDrivers: json['alternativeDrivers'] as String?,
      active: json['active'] as String,
      off: json['off'] as String?,
      speed: json['speed'] as String,
      pcie: json['pcie'] as String,
      empty: json['empty'] as String,
      driver: json['driver'] as String,
      busID: json['busID'] as String,
      gen: json['gen'] as int,
      vendor: json['vendor'] as String,
      classID: json['classID'] as String,
      version: json['version'] as String,
      name: json['name'] as String,
      lanes: json['lanes'] as int,
      chipID: json['chipID'] as String,
      ports: json['ports'] as String,
    );

Map<String, dynamic> _$$_PCIGraphicsDeviceToJson(
        _$_PCIGraphicsDevice instance) =>
    <String, dynamic>{
      'linkMax': instance.linkMax,
      'alternativeDrivers': instance.alternativeDrivers,
      'active': instance.active,
      'off': instance.off,
      'speed': instance.speed,
      'pcie': instance.pcie,
      'empty': instance.empty,
      'driver': instance.driver,
      'busID': instance.busID,
      'gen': instance.gen,
      'vendor': instance.vendor,
      'classID': instance.classID,
      'version': instance.version,
      'name': instance.name,
      'lanes': instance.lanes,
      'chipID': instance.chipID,
      'ports': instance.ports,
    };
