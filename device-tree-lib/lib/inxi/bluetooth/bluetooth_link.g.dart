// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bluetooth_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BluetoothLink _$$_BluetoothLinkFromJson(Map<String, dynamic> json) =>
    _$_BluetoothLink(
      linkPolicy: json['linkPolicy'] as String,
      scoMTU: json['scoMTU'] as String,
      info: json['info'] as String,
      linkMode: json['linkMode'] as String,
      aclMTU: json['aclMTU'] as String,
    );

Map<String, dynamic> _$$_BluetoothLinkToJson(_$_BluetoothLink instance) =>
    <String, dynamic>{
      'linkPolicy': instance.linkPolicy,
      'scoMTU': instance.scoMTU,
      'info': instance.info,
      'linkMode': instance.linkMode,
      'aclMTU': instance.aclMTU,
    };
