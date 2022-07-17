// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memory_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemorySummary _$$_MemorySummaryFromJson(Map<String, dynamic> json) =>
    _$_MemorySummary(
      capacity:
          MemoryCapacity.fromJson(json['capacity'] as Map<String, dynamic>),
      slotSummary: MemorySlotSummary.fromJson(
          json['slotSummary'] as Map<String, dynamic>),
      emptySlots: (json['emptySlots'] as List<dynamic>)
          .map((e) => EmptyMemorySlot.fromJson(e as Map<String, dynamic>))
          .toList(),
      filledSlots: (json['filledSlots'] as List<dynamic>)
          .map((e) => FilledMemorySlot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MemorySummaryToJson(_$_MemorySummary instance) =>
    <String, dynamic>{
      'capacity': instance.capacity.toJson(),
      'slotSummary': instance.slotSummary.toJson(),
      'emptySlots': instance.emptySlots.map((e) => e.toJson()).toList(),
      'filledSlots': instance.filledSlots.map((e) => e.toJson()).toList(),
    };
