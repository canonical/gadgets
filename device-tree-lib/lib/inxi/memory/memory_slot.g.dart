// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmptyMemorySlot _$$_EmptyMemorySlotFromJson(Map<String, dynamic> json) =>
    _$_EmptyMemorySlot(
      device: json['device'] as String,
    );

Map<String, dynamic> _$$_EmptyMemorySlotToJson(_$_EmptyMemorySlot instance) =>
    <String, dynamic>{
      'device': instance.device,
    };

_$_FilledMemorySlot _$$_FilledMemorySlotFromJson(Map<String, dynamic> json) =>
    _$_FilledMemorySlot(
      manufacturer: json['manufacturer'] as String,
      detail: json['detail'] as String,
      speed: json['speed'] as String,
      type: json['type'] as String,
      total: json['total'] as String,
      partNumber: json['partNumber'] as String,
      size: json['size'] as String,
      serial: json['serial'] as String,
      busWidth: json['busWidth'] as String,
      device: json['device'] as String,
    );

Map<String, dynamic> _$$_FilledMemorySlotToJson(_$_FilledMemorySlot instance) =>
    <String, dynamic>{
      'manufacturer': instance.manufacturer,
      'detail': instance.detail,
      'speed': instance.speed,
      'type': instance.type,
      'total': instance.total,
      'partNumber': instance.partNumber,
      'size': instance.size,
      'serial': instance.serial,
      'busWidth': instance.busWidth,
      'device': instance.device,
    };
