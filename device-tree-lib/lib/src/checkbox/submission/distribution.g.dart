// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distribution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Distribution _$$_DistributionFromJson(Map<String, dynamic> json) =>
    _$_Distribution(
      codename: json['codename'] as String,
      description: json['description'] as String,
      distributorId: json['distributor_id'] as String,
      release: json['release'] as String,
    );

Map<String, dynamic> _$$_DistributionToJson(_$_Distribution instance) =>
    <String, dynamic>{
      'codename': instance.codename,
      'description': instance.description,
      'distributor_id': instance.distributorId,
      'release': instance.release,
    };
