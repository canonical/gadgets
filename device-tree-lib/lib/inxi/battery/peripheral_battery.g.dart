// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peripheral_battery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PeripheralBattery _$$_PeripheralBatteryFromJson(Map<String, dynamic> json) =>
    _$_PeripheralBattery(
      status: json['status'] as String,
      serial: json['serial'] as String,
      model: json['model'] as String,
      charge: json['charge'] as String,
      rechargeable: json['rechargeable'] as String?,
      device: json['device'] as String,
    );

Map<String, dynamic> _$$_PeripheralBatteryToJson(
        _$_PeripheralBattery instance) =>
    <String, dynamic>{
      'status': instance.status,
      'serial': instance.serial,
      'model': instance.model,
      'charge': instance.charge,
      'rechargeable': instance.rechargeable,
      'device': instance.device,
    };
