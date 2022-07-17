// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'memory_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemorySummary _$MemorySummaryFromJson(Map<String, dynamic> json) {
  return _MemorySummary.fromJson(json);
}

/// @nodoc
mixin _$MemorySummary {
  MemoryCapacity get capacity => throw _privateConstructorUsedError;
  MemorySlotSummary get slotSummary => throw _privateConstructorUsedError;
  List<EmptyMemorySlot> get emptySlots => throw _privateConstructorUsedError;
  List<FilledMemorySlot> get filledSlots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemorySummaryCopyWith<MemorySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemorySummaryCopyWith<$Res> {
  factory $MemorySummaryCopyWith(
          MemorySummary value, $Res Function(MemorySummary) then) =
      _$MemorySummaryCopyWithImpl<$Res>;
  $Res call(
      {MemoryCapacity capacity,
      MemorySlotSummary slotSummary,
      List<EmptyMemorySlot> emptySlots,
      List<FilledMemorySlot> filledSlots});

  $MemoryCapacityCopyWith<$Res> get capacity;
  $MemorySlotSummaryCopyWith<$Res> get slotSummary;
}

/// @nodoc
class _$MemorySummaryCopyWithImpl<$Res>
    implements $MemorySummaryCopyWith<$Res> {
  _$MemorySummaryCopyWithImpl(this._value, this._then);

  final MemorySummary _value;
  // ignore: unused_field
  final $Res Function(MemorySummary) _then;

  @override
  $Res call({
    Object? capacity = freezed,
    Object? slotSummary = freezed,
    Object? emptySlots = freezed,
    Object? filledSlots = freezed,
  }) {
    return _then(_value.copyWith(
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as MemoryCapacity,
      slotSummary: slotSummary == freezed
          ? _value.slotSummary
          : slotSummary // ignore: cast_nullable_to_non_nullable
              as MemorySlotSummary,
      emptySlots: emptySlots == freezed
          ? _value.emptySlots
          : emptySlots // ignore: cast_nullable_to_non_nullable
              as List<EmptyMemorySlot>,
      filledSlots: filledSlots == freezed
          ? _value.filledSlots
          : filledSlots // ignore: cast_nullable_to_non_nullable
              as List<FilledMemorySlot>,
    ));
  }

  @override
  $MemoryCapacityCopyWith<$Res> get capacity {
    return $MemoryCapacityCopyWith<$Res>(_value.capacity, (value) {
      return _then(_value.copyWith(capacity: value));
    });
  }

  @override
  $MemorySlotSummaryCopyWith<$Res> get slotSummary {
    return $MemorySlotSummaryCopyWith<$Res>(_value.slotSummary, (value) {
      return _then(_value.copyWith(slotSummary: value));
    });
  }
}

/// @nodoc
abstract class _$$_MemorySummaryCopyWith<$Res>
    implements $MemorySummaryCopyWith<$Res> {
  factory _$$_MemorySummaryCopyWith(
          _$_MemorySummary value, $Res Function(_$_MemorySummary) then) =
      __$$_MemorySummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {MemoryCapacity capacity,
      MemorySlotSummary slotSummary,
      List<EmptyMemorySlot> emptySlots,
      List<FilledMemorySlot> filledSlots});

  @override
  $MemoryCapacityCopyWith<$Res> get capacity;
  @override
  $MemorySlotSummaryCopyWith<$Res> get slotSummary;
}

/// @nodoc
class __$$_MemorySummaryCopyWithImpl<$Res>
    extends _$MemorySummaryCopyWithImpl<$Res>
    implements _$$_MemorySummaryCopyWith<$Res> {
  __$$_MemorySummaryCopyWithImpl(
      _$_MemorySummary _value, $Res Function(_$_MemorySummary) _then)
      : super(_value, (v) => _then(v as _$_MemorySummary));

  @override
  _$_MemorySummary get _value => super._value as _$_MemorySummary;

  @override
  $Res call({
    Object? capacity = freezed,
    Object? slotSummary = freezed,
    Object? emptySlots = freezed,
    Object? filledSlots = freezed,
  }) {
    return _then(_$_MemorySummary(
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as MemoryCapacity,
      slotSummary: slotSummary == freezed
          ? _value.slotSummary
          : slotSummary // ignore: cast_nullable_to_non_nullable
              as MemorySlotSummary,
      emptySlots: emptySlots == freezed
          ? _value._emptySlots
          : emptySlots // ignore: cast_nullable_to_non_nullable
              as List<EmptyMemorySlot>,
      filledSlots: filledSlots == freezed
          ? _value._filledSlots
          : filledSlots // ignore: cast_nullable_to_non_nullable
              as List<FilledMemorySlot>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemorySummary extends _MemorySummary {
  _$_MemorySummary(
      {required this.capacity,
      required this.slotSummary,
      required final List<EmptyMemorySlot> emptySlots,
      required final List<FilledMemorySlot> filledSlots})
      : _emptySlots = emptySlots,
        _filledSlots = filledSlots,
        super._();

  factory _$_MemorySummary.fromJson(Map<String, dynamic> json) =>
      _$$_MemorySummaryFromJson(json);

  @override
  final MemoryCapacity capacity;
  @override
  final MemorySlotSummary slotSummary;
  final List<EmptyMemorySlot> _emptySlots;
  @override
  List<EmptyMemorySlot> get emptySlots {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_emptySlots);
  }

  final List<FilledMemorySlot> _filledSlots;
  @override
  List<FilledMemorySlot> get filledSlots {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filledSlots);
  }

  @override
  String toString() {
    return 'MemorySummary(capacity: $capacity, slotSummary: $slotSummary, emptySlots: $emptySlots, filledSlots: $filledSlots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemorySummary &&
            const DeepCollectionEquality().equals(other.capacity, capacity) &&
            const DeepCollectionEquality()
                .equals(other.slotSummary, slotSummary) &&
            const DeepCollectionEquality()
                .equals(other._emptySlots, _emptySlots) &&
            const DeepCollectionEquality()
                .equals(other._filledSlots, _filledSlots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(capacity),
      const DeepCollectionEquality().hash(slotSummary),
      const DeepCollectionEquality().hash(_emptySlots),
      const DeepCollectionEquality().hash(_filledSlots));

  @JsonKey(ignore: true)
  @override
  _$$_MemorySummaryCopyWith<_$_MemorySummary> get copyWith =>
      __$$_MemorySummaryCopyWithImpl<_$_MemorySummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemorySummaryToJson(
      this,
    );
  }
}

abstract class _MemorySummary extends MemorySummary {
  factory _MemorySummary(
      {required final MemoryCapacity capacity,
      required final MemorySlotSummary slotSummary,
      required final List<EmptyMemorySlot> emptySlots,
      required final List<FilledMemorySlot> filledSlots}) = _$_MemorySummary;
  _MemorySummary._() : super._();

  factory _MemorySummary.fromJson(Map<String, dynamic> json) =
      _$_MemorySummary.fromJson;

  @override
  MemoryCapacity get capacity;
  @override
  MemorySlotSummary get slotSummary;
  @override
  List<EmptyMemorySlot> get emptySlots;
  @override
  List<FilledMemorySlot> get filledSlots;
  @override
  @JsonKey(ignore: true)
  _$$_MemorySummaryCopyWith<_$_MemorySummary> get copyWith =>
      throw _privateConstructorUsedError;
}
