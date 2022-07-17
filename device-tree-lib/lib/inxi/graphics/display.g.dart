// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Display _$$_DisplayFromJson(Map<String, dynamic> json) => _$_Display(
      resolution: json['resolution'] as String,
      dpi: (json['dpi'] as num?)?.toDouble(),
      monitor: json['monitor'] as String,
      size: json['size'] as String,
      hz: json['hz'] as int,
      diagonal: json['diagonal'] as String?,
    );

Map<String, dynamic> _$$_DisplayToJson(_$_Display instance) =>
    <String, dynamic>{
      'resolution': instance.resolution,
      'dpi': instance.dpi,
      'monitor': instance.monitor,
      'size': instance.size,
      'hz': instance.hz,
      'diagonal': instance.diagonal,
    };
