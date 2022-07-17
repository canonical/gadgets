// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Screen _$$_ScreenFromJson(Map<String, dynamic> json) => _$_Screen(
      dpi: (json['dpi'] as num).toDouble(),
      screen: json['screen'] as int,
      resolution: json['resolution'] as String,
      diagonal: json['diagonal'] as String,
      size: json['size'] as String,
    );

Map<String, dynamic> _$$_ScreenToJson(_$_Screen instance) => <String, dynamic>{
      'dpi': instance.dpi,
      'screen': instance.screen,
      'resolution': instance.resolution,
      'diagonal': instance.diagonal,
      'size': instance.size,
    };
