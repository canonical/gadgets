// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_slot_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemorySlotSummary _$$_MemorySlotSummaryFromJson(Map<String, dynamic> json) =>
    _$_MemorySlotSummary(
      note: json['note'] as String,
      maxModuleSize: json['maxModuleSize'] as String,
      slots: json['slots'] as int,
      errorCorrection: json['errorCorrection'] as String,
      capacity: json['capacity'] as String,
      array: json['array'] as String,
    );

Map<String, dynamic> _$$_MemorySlotSummaryToJson(
        _$_MemorySlotSummary instance) =>
    <String, dynamic>{
      'note': instance.note,
      'maxModuleSize': instance.maxModuleSize,
      'slots': instance.slots,
      'errorCorrection': instance.errorCorrection,
      'capacity': instance.capacity,
      'array': instance.array,
    };
