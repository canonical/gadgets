// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bluetooth_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BluetoothService _$$_BluetoothServiceFromJson(Map<String, dynamic> json) =>
    _$_BluetoothService(
      bluetoothService: json['bluetoothService'] as String,
      state: json['state'] as String,
      address: json['address'] as String,
      rfkID: json['rfkID'] as String,
      hardware: json['hardware'] as String,
      id: json['id'] as String,
      rfkBlock: json['rfkBlock'] as String,
      software: json['software'] as String,
      report: json['report'] as String,
    );

Map<String, dynamic> _$$_BluetoothServiceToJson(_$_BluetoothService instance) =>
    <String, dynamic>{
      'bluetoothService': instance.bluetoothService,
      'state': instance.state,
      'address': instance.address,
      'rfkID': instance.rfkID,
      'hardware': instance.hardware,
      'id': instance.id,
      'rfkBlock': instance.rfkBlock,
      'software': instance.software,
      'report': instance.report,
    };
