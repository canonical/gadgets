// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpu_core_frequency_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CPUCoreFrequencyInfo _$$_CPUCoreFrequencyInfoFromJson(
        Map<String, dynamic> json) =>
    _$_CPUCoreFrequencyInfo(
      minMax: json['minMax'] as String,
      driver: json['driver'] as String,
      avg: json['avg'] as int,
      boost: json['boost'] as String,
      extClock: json['extClock'] as String,
      governor: json['governor'] as String,
      volts: json['volts'] as String,
      bogomips: json['bogomips'] as int,
      baseBoost: json['baseBoost'] as String,
      coreFrequencies: (json['coreFrequencies'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_CPUCoreFrequencyInfoToJson(
        _$_CPUCoreFrequencyInfo instance) =>
    <String, dynamic>{
      'minMax': instance.minMax,
      'driver': instance.driver,
      'avg': instance.avg,
      'boost': instance.boost,
      'extClock': instance.extClock,
      'governor': instance.governor,
      'volts': instance.volts,
      'bogomips': instance.bogomips,
      'baseBoost': instance.baseBoost,
      'coreFrequencies': instance.coreFrequencies,
    };
