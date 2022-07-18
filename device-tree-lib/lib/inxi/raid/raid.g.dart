// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RAIDSummary _$$_RAIDSummaryFromJson(Map<String, dynamic> json) =>
    _$_RAIDSummary(
      volumes: (json['volumes'] as List<dynamic>)
          .map((e) => RAID.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RAIDSummaryToJson(_$_RAIDSummary instance) =>
    <String, dynamic>{
      'volumes': instance.volumes.map((e) => e.toJson()).toList(),
    };

_$_RAID _$$_RAIDFromJson(Map<String, dynamic> json) => _$_RAID(
      free: json['free'] as String,
      status: json['status'] as String,
      level: json['level'] as String,
      device: json['device'] as String,
      allocated: json['allocated'] as String,
      size: json['size'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_RAIDToJson(_$_RAID instance) => <String, dynamic>{
      'free': instance.free,
      'status': instance.status,
      'level': instance.level,
      'device': instance.device,
      'allocated': instance.allocated,
      'size': instance.size,
      'type': instance.type,
    };
