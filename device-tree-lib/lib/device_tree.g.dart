// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_tree.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceTree _$$_DeviceTreeFromJson(Map<String, dynamic> json) =>
    _$_DeviceTree(
      info: DeviceInfo.fromJson(json['info'] as Map<String, dynamic>),
      usbSummary: json['usbSummary'] == null
          ? null
          : USBSummary.fromJson(json['usbSummary'] as Map<String, dynamic>),
      audioSummary:
          AudioSummary.fromJson(json['audioSummary'] as Map<String, dynamic>),
      bluetoothSummary: json['bluetoothSummary'] == null
          ? null
          : BluetoothSummary.fromJson(
              json['bluetoothSummary'] as Map<String, dynamic>),
      batterySummary: BatterySummary.fromJson(
          json['batterySummary'] as Map<String, dynamic>),
      cpuSummary:
          CPUSummary.fromJson(json['cpuSummary'] as Map<String, dynamic>),
      driveSummary:
          DriveSummary.fromJson(json['driveSummary'] as Map<String, dynamic>),
      graphicsSummary: GraphicsSummary.fromJson(
          json['graphicsSummary'] as Map<String, dynamic>),
      machineSummary: json['machineSummary'] == null
          ? null
          : MachineSummary.fromJson(
              json['machineSummary'] as Map<String, dynamic>),
      memorySummary: json['memorySummary'] == null
          ? null
          : MemorySummary.fromJson(
              json['memorySummary'] as Map<String, dynamic>),
      partitionSummary: PartitionSummary.fromJson(
          json['partitionSummary'] as Map<String, dynamic>),
      raidSummary:
          RAIDSummary.fromJson(json['raidSummary'] as Map<String, dynamic>),
      systemSummary:
          SystemSummary.fromJson(json['systemSummary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeviceTreeToJson(_$_DeviceTree instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'usbSummary': instance.usbSummary?.toJson(),
      'audioSummary': instance.audioSummary.toJson(),
      'bluetoothSummary': instance.bluetoothSummary?.toJson(),
      'batterySummary': instance.batterySummary.toJson(),
      'cpuSummary': instance.cpuSummary.toJson(),
      'driveSummary': instance.driveSummary.toJson(),
      'graphicsSummary': instance.graphicsSummary.toJson(),
      'machineSummary': instance.machineSummary?.toJson(),
      'memorySummary': instance.memorySummary?.toJson(),
      'partitionSummary': instance.partitionSummary.toJson(),
      'raidSummary': instance.raidSummary.toJson(),
      'systemSummary': instance.systemSummary.toJson(),
    };
