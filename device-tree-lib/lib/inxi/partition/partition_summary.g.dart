// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partition_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PartitionSummary _$$_PartitionSummaryFromJson(Map<String, dynamic> json) =>
    _$_PartitionSummary(
      partitions: (json['partitions'] as List<dynamic>)
          .map((e) => Partition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PartitionSummaryToJson(_$_PartitionSummary instance) =>
    <String, dynamic>{
      'partitions': instance.partitions.map((e) => e.toJson()).toList(),
    };
