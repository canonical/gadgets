// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'memory_slot_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemorySlotSummary _$MemorySlotSummaryFromJson(Map<String, dynamic> json) {
  return _MemorySlotSummary.fromJson(json);
}

/// @nodoc
mixin _$MemorySlotSummary {
  String get note => throw _privateConstructorUsedError;
  String get maxModuleSize => throw _privateConstructorUsedError;
  int get slots => throw _privateConstructorUsedError;
  String get errorCorrection => throw _privateConstructorUsedError;
  String get capacity => throw _privateConstructorUsedError;
  String get array => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemorySlotSummaryCopyWith<MemorySlotSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemorySlotSummaryCopyWith<$Res> {
  factory $MemorySlotSummaryCopyWith(
          MemorySlotSummary value, $Res Function(MemorySlotSummary) then) =
      _$MemorySlotSummaryCopyWithImpl<$Res>;
  $Res call(
      {String note,
      String maxModuleSize,
      int slots,
      String errorCorrection,
      String capacity,
      String array});
}

/// @nodoc
class _$MemorySlotSummaryCopyWithImpl<$Res>
    implements $MemorySlotSummaryCopyWith<$Res> {
  _$MemorySlotSummaryCopyWithImpl(this._value, this._then);

  final MemorySlotSummary _value;
  // ignore: unused_field
  final $Res Function(MemorySlotSummary) _then;

  @override
  $Res call({
    Object? note = freezed,
    Object? maxModuleSize = freezed,
    Object? slots = freezed,
    Object? errorCorrection = freezed,
    Object? capacity = freezed,
    Object? array = freezed,
  }) {
    return _then(_value.copyWith(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      maxModuleSize: maxModuleSize == freezed
          ? _value.maxModuleSize
          : maxModuleSize // ignore: cast_nullable_to_non_nullable
              as String,
      slots: slots == freezed
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as int,
      errorCorrection: errorCorrection == freezed
          ? _value.errorCorrection
          : errorCorrection // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as String,
      array: array == freezed
          ? _value.array
          : array // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MemorySlotSummaryCopyWith<$Res>
    implements $MemorySlotSummaryCopyWith<$Res> {
  factory _$$_MemorySlotSummaryCopyWith(_$_MemorySlotSummary value,
          $Res Function(_$_MemorySlotSummary) then) =
      __$$_MemorySlotSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String note,
      String maxModuleSize,
      int slots,
      String errorCorrection,
      String capacity,
      String array});
}

/// @nodoc
class __$$_MemorySlotSummaryCopyWithImpl<$Res>
    extends _$MemorySlotSummaryCopyWithImpl<$Res>
    implements _$$_MemorySlotSummaryCopyWith<$Res> {
  __$$_MemorySlotSummaryCopyWithImpl(
      _$_MemorySlotSummary _value, $Res Function(_$_MemorySlotSummary) _then)
      : super(_value, (v) => _then(v as _$_MemorySlotSummary));

  @override
  _$_MemorySlotSummary get _value => super._value as _$_MemorySlotSummary;

  @override
  $Res call({
    Object? note = freezed,
    Object? maxModuleSize = freezed,
    Object? slots = freezed,
    Object? errorCorrection = freezed,
    Object? capacity = freezed,
    Object? array = freezed,
  }) {
    return _then(_$_MemorySlotSummary(
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      maxModuleSize: maxModuleSize == freezed
          ? _value.maxModuleSize
          : maxModuleSize // ignore: cast_nullable_to_non_nullable
              as String,
      slots: slots == freezed
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as int,
      errorCorrection: errorCorrection == freezed
          ? _value.errorCorrection
          : errorCorrection // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as String,
      array: array == freezed
          ? _value.array
          : array // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemorySlotSummary extends _MemorySlotSummary {
  _$_MemorySlotSummary(
      {required this.note,
      required this.maxModuleSize,
      required this.slots,
      required this.errorCorrection,
      required this.capacity,
      required this.array})
      : super._();

  factory _$_MemorySlotSummary.fromJson(Map<String, dynamic> json) =>
      _$$_MemorySlotSummaryFromJson(json);

  @override
  final String note;
  @override
  final String maxModuleSize;
  @override
  final int slots;
  @override
  final String errorCorrection;
  @override
  final String capacity;
  @override
  final String array;

  @override
  String toString() {
    return 'MemorySlotSummary(note: $note, maxModuleSize: $maxModuleSize, slots: $slots, errorCorrection: $errorCorrection, capacity: $capacity, array: $array)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemorySlotSummary &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.maxModuleSize, maxModuleSize) &&
            const DeepCollectionEquality().equals(other.slots, slots) &&
            const DeepCollectionEquality()
                .equals(other.errorCorrection, errorCorrection) &&
            const DeepCollectionEquality().equals(other.capacity, capacity) &&
            const DeepCollectionEquality().equals(other.array, array));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(maxModuleSize),
      const DeepCollectionEquality().hash(slots),
      const DeepCollectionEquality().hash(errorCorrection),
      const DeepCollectionEquality().hash(capacity),
      const DeepCollectionEquality().hash(array));

  @JsonKey(ignore: true)
  @override
  _$$_MemorySlotSummaryCopyWith<_$_MemorySlotSummary> get copyWith =>
      __$$_MemorySlotSummaryCopyWithImpl<_$_MemorySlotSummary>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemorySlotSummaryToJson(
      this,
    );
  }
}

abstract class _MemorySlotSummary extends MemorySlotSummary {
  factory _MemorySlotSummary(
      {required final String note,
      required final String maxModuleSize,
      required final int slots,
      required final String errorCorrection,
      required final String capacity,
      required final String array}) = _$_MemorySlotSummary;
  _MemorySlotSummary._() : super._();

  factory _MemorySlotSummary.fromJson(Map<String, dynamic> json) =
      _$_MemorySlotSummary.fromJson;

  @override
  String get note;
  @override
  String get maxModuleSize;
  @override
  int get slots;
  @override
  String get errorCorrection;
  @override
  String get capacity;
  @override
  String get array;
  @override
  @JsonKey(ignore: true)
  _$$_MemorySlotSummaryCopyWith<_$_MemorySlotSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
