// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CPU _$$_CPUFromJson(Map<String, dynamic> json) => _$_CPU(
      family: json['family'] as String,
      stepping: json['stepping'] as int?,
      microcode: json['microcode'] as String?,
      model: json['model'] as String,
      modelID: json['modelID'] as String,
      type: json['type'] as String,
      bits: json['bits'] as int,
      architecture: json['architecture'] as String,
      socket: json['socket'] as String?,
    );

Map<String, dynamic> _$$_CPUToJson(_$_CPU instance) => <String, dynamic>{
      'family': instance.family,
      'stepping': instance.stepping,
      'microcode': instance.microcode,
      'model': instance.model,
      'modelID': instance.modelID,
      'type': instance.type,
      'bits': instance.bits,
      'architecture': instance.architecture,
      'socket': instance.socket,
    };
