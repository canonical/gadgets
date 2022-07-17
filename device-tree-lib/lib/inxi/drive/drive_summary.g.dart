// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drive_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DriveSummary _$$_DriveSummaryFromJson(Map<String, dynamic> json) =>
    _$_DriveSummary(
      capacity:
          DriveCapacity.fromJson(json['capacity'] as Map<String, dynamic>),
      drives: (json['drives'] as List<dynamic>)
          .map((e) => Drive.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DriveSummaryToJson(_$_DriveSummary instance) =>
    <String, dynamic>{
      'capacity': instance.capacity.toJson(),
      'drives': instance.drives.map((e) => e.toJson()).toList(),
    };
