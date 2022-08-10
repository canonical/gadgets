// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_server.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DisplayServer _$$_DisplayServerFromJson(Map<String, dynamic> json) =>
    _$_DisplayServer(
      driver: json['driver'] as String,
      loaded: json['loaded'] as String?,
      version: json['version'] as String?,
      screens: json['screens'] as String,
      gpu: json['gpu'] as String,
      X: json['X'] as String?,
      server: json['server'] as String,
      display: json['display'] as String,
      unloaded: json['unloaded'] as String?,
      displayID: json['displayID'] as String,
      compositor: json['compositor'] as String,
    );

Map<String, dynamic> _$$_DisplayServerToJson(_$_DisplayServer instance) =>
    <String, dynamic>{
      'driver': instance.driver,
      'loaded': instance.loaded,
      'version': instance.version,
      'screens': instance.screens,
      'gpu': instance.gpu,
      'X': instance.X,
      'server': instance.server,
      'display': instance.display,
      'unloaded': instance.unloaded,
      'displayID': instance.displayID,
      'compositor': instance.compositor,
    };
