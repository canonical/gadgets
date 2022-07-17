// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine_battery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MachineBattery _$$_MachineBatteryFromJson(Map<String, dynamic> json) =>
    _$_MachineBattery(
      status: json['status'] as String,
      serial: json['serial'] as String,
      model: json['model'] as String,
      charge: json['charge'] as String,
      type: json['type'] as String,
      id: json['id'] as String,
      cycles: json['cycles'] as int,
      condition: json['condition'] as String,
      min: (json['min'] as num).toDouble(),
      volts: (json['volts'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MachineBatteryToJson(_$_MachineBattery instance) =>
    <String, dynamic>{
      'status': instance.status,
      'serial': instance.serial,
      'model': instance.model,
      'charge': instance.charge,
      'type': instance.type,
      'id': instance.id,
      'cycles': instance.cycles,
      'condition': instance.condition,
      'min': instance.min,
      'volts': instance.volts,
    };
