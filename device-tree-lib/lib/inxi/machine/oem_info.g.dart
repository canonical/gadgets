// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oem_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OEMInfo _$$_OEMInfoFromJson(Map<String, dynamic> json) => _$_OEMInfo(
      serial: json['serial'] as String,
      typeIdentifier: json['typeIdentifier'] as int,
      typeName: json['typeName'] as String,
      version: json['version'] as String,
      product: json['product'] as String,
      system: json['system'] as String,
    );

Map<String, dynamic> _$$_OEMInfoToJson(_$_OEMInfo instance) =>
    <String, dynamic>{
      'serial': instance.serial,
      'typeIdentifier': instance.typeIdentifier,
      'typeName': instance.typeName,
      'version': instance.version,
      'product': instance.product,
      'system': instance.system,
    };
