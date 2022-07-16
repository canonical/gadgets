// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttachmentResult _$$_AttachmentResultFromJson(Map<String, dynamic> json) =>
    _$_AttachmentResult(
      id: json['id'] as String,
      fullId: json['full_id'] as String,
      name: json['name'] as String,
      certificationStatus: json['certification_status'] as String,
      category: json['category'] as String,
      categoryId: json['category_id'] as String?,
      status: json['status'] as String,
      outcome: json['outcome'] as String,
      comments: json['comments'] as String?,
      ioLog: json['io_log'] as String,
      duration: (json['duration'] as num).toDouble(),
    );

Map<String, dynamic> _$$_AttachmentResultToJson(_$_AttachmentResult instance) =>
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
      'duration': instance.duration,
    };
