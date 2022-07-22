// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'machine_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MachineSummary _$$_MachineSummaryFromJson(Map<String, dynamic> json) =>
    _$_MachineSummary(
      deviceTree: json['deviceTree'] == null
          ? null
          : DeviceTree.fromJson(json['deviceTree'] as Map<String, dynamic>),
      uefi: UEFI.fromJson(json['uefi'] as Map<String, dynamic>),
      oemInfo: json['oemInfo'] == null
          ? null
          : OEMInfo.fromJson(json['oemInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MachineSummaryToJson(_$_MachineSummary instance) =>
    <String, dynamic>{
      'deviceTree': instance.deviceTree?.toJson(),
      'uefi': instance.uefi.toJson(),
      'oemInfo': instance.oemInfo?.toJson(),
    };
