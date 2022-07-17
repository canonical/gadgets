// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_renderer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DisplayRenderer _$$_DisplayRendererFromJson(Map<String, dynamic> json) =>
    _$_DisplayRenderer(
      directRender: json['directRender'] as bool,
      renderer: json['renderer'] as String,
      version: json['version'] as String,
      openGL: json['openGL'] as String,
    );

Map<String, dynamic> _$$_DisplayRendererToJson(_$_DisplayRenderer instance) =>
    <String, dynamic>{
      'directRender': instance.directRender,
      'renderer': instance.renderer,
      'version': instance.version,
      'openGL': instance.openGL,
    };
