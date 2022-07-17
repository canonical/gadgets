// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bluetooth_chip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BluetoothChip _$$_BluetoothChipFromJson(Map<String, dynamic> json) =>
    _$_BluetoothChip(
      chipID: json['chipID'] as String,
      busID: json['busID'] as String,
      driver: json['driver'] as String,
      version: json['version'] as String,
      device: json['device'] as String,
      type: json['type'] as String,
      classID: json['classID'] as String,
    );

Map<String, dynamic> _$$_BluetoothChipToJson(_$_BluetoothChip instance) =>
    <String, dynamic>{
      'chipID': instance.chipID,
      'busID': instance.busID,
      'driver': instance.driver,
      'version': instance.version,
      'device': instance.device,
      'type': instance.type,
      'classID': instance.classID,
    };
