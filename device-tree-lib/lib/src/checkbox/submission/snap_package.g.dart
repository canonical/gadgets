// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snap_package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SnapPackage _$$_SnapPackageFromJson(Map<String, dynamic> json) =>
    _$_SnapPackage(
      name: json['name'] as String?,
      confinement: json['confinement'] as String?,
      developer: json['developer'] as String?,
      devmode: json['devmode'] as String?,
      installDate: json['install-date'] == null
          ? null
          : DateTime.parse(json['install-date'] as String),
      revision: json['revision'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      version: json['version'] as String?,
      channel: json['channel'] as String?,
    );

Map<String, dynamic> _$$_SnapPackageToJson(_$_SnapPackage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'confinement': instance.confinement,
      'developer': instance.developer,
      'devmode': instance.devmode,
      'install-date': instance.installDate?.toIso8601String(),
      'revision': instance.revision,
      'status': instance.status,
      'type': instance.type,
      'version': instance.version,
      'channel': instance.channel,
    };
