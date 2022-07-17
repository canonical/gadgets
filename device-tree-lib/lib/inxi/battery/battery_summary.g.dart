// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battery_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BatterySummary _$$_BatterySummaryFromJson(Map<String, dynamic> json) =>
    _$_BatterySummary(
      machineBatteries: (json['machineBatteries'] as List<dynamic>)
          .map((e) => MachineBattery.fromJson(e as Map<String, dynamic>))
          .toList(),
      peripheralBatteries: (json['peripheralBatteries'] as List<dynamic>)
          .map((e) => PeripheralBattery.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BatterySummaryToJson(_$_BatterySummary instance) =>
    <String, dynamic>{
      'machineBatteries':
          instance.machineBatteries.map((e) => e.toJson()).toList(),
      'peripheralBatteries':
          instance.peripheralBatteries.map((e) => e.toJson()).toList(),
    };
