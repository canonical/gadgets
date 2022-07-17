// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Drive _$$_DriveFromJson(Map<String, dynamic> json) => _$_Drive(
      id: json['id'] as String,
      blockSize: json['blockSize'] as String,
      vendor: json['vendor'] as String,
      serial: json['serial'] as String,
      type: json['type'] as String,
      scheme: json['scheme'] as String,
      speed: json['speed'] as String,
      lanes: json['lanes'] as int?,
      temperature: json['temperature'] as String?,
      size: json['size'] as String,
      model: json['model'] as String,
      rev: json['rev'] as String,
      logical: json['logical'] as String,
      majorMinor: json['majorMinor'] as String,
      physical: json['physical'] as String,
    );

Map<String, dynamic> _$$_DriveToJson(_$_Drive instance) => <String, dynamic>{
      'id': instance.id,
      'blockSize': instance.blockSize,
      'vendor': instance.vendor,
      'serial': instance.serial,
      'type': instance.type,
      'scheme': instance.scheme,
      'speed': instance.speed,
      'lanes': instance.lanes,
      'temperature': instance.temperature,
      'size': instance.size,
      'model': instance.model,
      'rev': instance.rev,
      'logical': instance.logical,
      'majorMinor': instance.majorMinor,
      'physical': instance.physical,
    };
