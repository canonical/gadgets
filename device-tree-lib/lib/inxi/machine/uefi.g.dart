// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uefi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UEFI _$$_UEFIFromJson(Map<String, dynamic> json) => _$_UEFI(
      uefi: json['uefi'] as String,
      version: json['version'] as String,
      date: json['date'] as String,
      motherboardModel: json['motherboardModel'] as String,
      serial: json['serial'] as String,
      motherboardVendor: json['motherboardVendor'] as String,
      machineType: json['machineType'] as String?,
    );

Map<String, dynamic> _$$_UEFIToJson(_$_UEFI instance) => <String, dynamic>{
      'uefi': instance.uefi,
      'version': instance.version,
      'date': instance.date,
      'motherboardModel': instance.motherboardModel,
      'serial': instance.serial,
      'motherboardVendor': instance.motherboardVendor,
      'machineType': instance.machineType,
    };
