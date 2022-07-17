// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpu_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CPUSummary _$$_CPUSummaryFromJson(Map<String, dynamic> json) =>
    _$_CPUSummary(
      cpu: CPU.fromJson(json['cpu'] as Map<String, dynamic>),
      coreInfo: json['coreInfo'] == null
          ? null
          : CPUCoreInfo.fromJson(json['coreInfo'] as Map<String, dynamic>),
      flags: json['flags'] == null
          ? null
          : CPUCompilerFlags.fromJson(json['flags'] as Map<String, dynamic>),
      coreFrequencyInfo: json['coreFrequencyInfo'] == null
          ? null
          : CPUCoreFrequencyInfo.fromJson(
              json['coreFrequencyInfo'] as Map<String, dynamic>),
      vulnerabilityInfo: CPUVulnerabilityInfo.fromJson(
          json['vulnerabilityInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CPUSummaryToJson(_$_CPUSummary instance) =>
    <String, dynamic>{
      'cpu': instance.cpu.toJson(),
      'coreInfo': instance.coreInfo?.toJson(),
      'flags': instance.flags?.toJson(),
      'coreFrequencyInfo': instance.coreFrequencyInfo?.toJson(),
      'vulnerabilityInfo': instance.vulnerabilityInfo.toJson(),
    };
