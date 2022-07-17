// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bluetooth_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BluetoothSummary _$$_BluetoothSummaryFromJson(Map<String, dynamic> json) =>
    _$_BluetoothSummary(
      chip: BluetoothChip.fromJson(json['chip'] as Map<String, dynamic>),
      service:
          BluetoothService.fromJson(json['service'] as Map<String, dynamic>),
      link: BluetoothLink.fromJson(json['link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BluetoothSummaryToJson(_$_BluetoothSummary instance) =>
    <String, dynamic>{
      'chip': instance.chip.toJson(),
      'service': instance.service.toJson(),
      'link': instance.link.toJson(),
    };
