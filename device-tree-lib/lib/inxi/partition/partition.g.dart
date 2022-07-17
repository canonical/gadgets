// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Partition _$$_PartitionFromJson(Map<String, dynamic> json) => _$_Partition(
      majorMinor: json['majorMinor'] as String?,
      blockSize: json['blockSize'] as String?,
      device: json['device'] as String?,
      rawSize: json['rawSize'] as String?,
      uuid: json['uuid'] as String?,
      size: json['size'] as String,
      used: json['used'] as String?,
      label: json['label'] as String?,
      id: json['id'] as String,
      fs: json['fs'] as String,
      mapped: json['mapped'] as String?,
    );

Map<String, dynamic> _$$_PartitionToJson(_$_Partition instance) =>
    <String, dynamic>{
      'majorMinor': instance.majorMinor,
      'blockSize': instance.blockSize,
      'device': instance.device,
      'rawSize': instance.rawSize,
      'uuid': instance.uuid,
      'size': instance.size,
      'used': instance.used,
      'label': instance.label,
      'id': instance.id,
      'fs': instance.fs,
      'mapped': instance.mapped,
    };
