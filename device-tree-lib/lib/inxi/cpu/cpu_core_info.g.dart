// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpu_core_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CPUCoreInfo _$$_CPUCoreInfoFromJson(Map<String, dynamic> json) =>
    _$_CPUCoreInfo(
      tpc: json['tpc'] as int,
      l2: json['l2'] as String,
      threads: json['threads'] as int,
      l1: json['l1'] as String,
      smt: json['smt'] as String,
      cores: json['cores'] as int,
      cache: json['cache'] as String,
      cpus: json['cpus'] as int,
      l3: json['l3'] as String,
      description: json['description'] as String,
      dies: json['dies'] as int?,
    );

Map<String, dynamic> _$$_CPUCoreInfoToJson(_$_CPUCoreInfo instance) =>
    <String, dynamic>{
      'tpc': instance.tpc,
      'l2': instance.l2,
      'threads': instance.threads,
      'l1': instance.l1,
      'smt': instance.smt,
      'cores': instance.cores,
      'cache': instance.cache,
      'cpus': instance.cpus,
      'l3': instance.l3,
      'description': instance.description,
      'dies': instance.dies,
    };
