// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResourceResult _$$_ResourceResultFromJson(Map<String, dynamic> json) =>
    _$_ResourceResult(
      id: json['id'] as String,
      fullId: json['full_id'] as String,
      name: json['name'] as String,
      certificationStatus: json['certification_status'] as String,
      category: json['category'] as String,
      categoryId: json['category_id'] as String,
      status: json['status'] as String,
      outcome: json['outcome'] as String,
      comments: json['comments'] as String?,
      ioLog: json['io_log'] as String,
      type: json['type'] as String,
      project: json['project'] as String,
      duration: (json['duration'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ResourceResultToJson(_$_ResourceResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_id': instance.fullId,
      'name': instance.name,
      'certification_status': instance.certificationStatus,
      'category': instance.category,
      'category_id': instance.categoryId,
      'status': instance.status,
      'outcome': instance.outcome,
      'comments': instance.comments,
      'io_log': instance.ioLog,
      'type': instance.type,
      'project': instance.project,
      'duration': instance.duration,
    };
