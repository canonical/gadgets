// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceInfo _$$_DeviceInfoFromJson(Map<String, dynamic> json) =>
    _$_DeviceInfo(
      tool: json['tool'] as String?,
      uptime: json['uptime'] as String,
      shell: json['shell'] as String,
      clangVersion: json['clangVersion'] as String,
      version: json['version'] as String,
      inxiVersion: json['inxiVersion'] as String,
      initSystem: json['initSystem'] as String,
      runLevel: json['runLevel'] as int?,
      gccVersion: json['gccVersion'] as String,
      defaultShell: json['defaultShell'] as String?,
      wakeups: json['wakeups'] as int?,
    );

Map<String, dynamic> _$$_DeviceInfoToJson(_$_DeviceInfo instance) =>
    <String, dynamic>{
      'tool': instance.tool,
      'uptime': instance.uptime,
      'shell': instance.shell,
      'clangVersion': instance.clangVersion,
      'version': instance.version,
      'inxiVersion': instance.inxiVersion,
      'initSystem': instance.initSystem,
      'runLevel': instance.runLevel,
      'gccVersion': instance.gccVersion,
      'defaultShell': instance.defaultShell,
      'wakeups': instance.wakeups,
    };
