// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drive_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriveSummary _$DriveSummaryFromJson(Map<String, dynamic> json) {
  return _DriveSummary.fromJson(json);
}

/// @nodoc
mixin _$DriveSummary {
  DriveCapacity get capacity => throw _privateConstructorUsedError;
  List<Drive> get drives => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriveSummaryCopyWith<DriveSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriveSummaryCopyWith<$Res> {
  factory $DriveSummaryCopyWith(
          DriveSummary value, $Res Function(DriveSummary) then) =
      _$DriveSummaryCopyWithImpl<$Res>;
  $Res call({DriveCapacity capacity, List<Drive> drives});

  $DriveCapacityCopyWith<$Res> get capacity;
}

/// @nodoc
class _$DriveSummaryCopyWithImpl<$Res> implements $DriveSummaryCopyWith<$Res> {
  _$DriveSummaryCopyWithImpl(this._value, this._then);

  final DriveSummary _value;
  // ignore: unused_field
  final $Res Function(DriveSummary) _then;

  @override
  $Res call({
    Object? capacity = freezed,
    Object? drives = freezed,
  }) {
    return _then(_value.copyWith(
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as DriveCapacity,
      drives: drives == freezed
          ? _value.drives
          : drives // ignore: cast_nullable_to_non_nullable
              as List<Drive>,
    ));
  }

  @override
  $DriveCapacityCopyWith<$Res> get capacity {
    return $DriveCapacityCopyWith<$Res>(_value.capacity, (value) {
      return _then(_value.copyWith(capacity: value));
    });
  }
}

/// @nodoc
abstract class _$$_DriveSummaryCopyWith<$Res>
    implements $DriveSummaryCopyWith<$Res> {
  factory _$$_DriveSummaryCopyWith(
          _$_DriveSummary value, $Res Function(_$_DriveSummary) then) =
      __$$_DriveSummaryCopyWithImpl<$Res>;
  @override
  $Res call({DriveCapacity capacity, List<Drive> drives});

  @override
  $DriveCapacityCopyWith<$Res> get capacity;
}

/// @nodoc
class __$$_DriveSummaryCopyWithImpl<$Res>
    extends _$DriveSummaryCopyWithImpl<$Res>
    implements _$$_DriveSummaryCopyWith<$Res> {
  __$$_DriveSummaryCopyWithImpl(
      _$_DriveSummary _value, $Res Function(_$_DriveSummary) _then)
      : super(_value, (v) => _then(v as _$_DriveSummary));

  @override
  _$_DriveSummary get _value => super._value as _$_DriveSummary;

  @override
  $Res call({
    Object? capacity = freezed,
    Object? drives = freezed,
  }) {
    return _then(_$_DriveSummary(
      capacity: capacity == freezed
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as DriveCapacity,
      drives: drives == freezed
          ? _value._drives
          : drives // ignore: cast_nullable_to_non_nullable
              as List<Drive>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriveSummary extends _DriveSummary {
  _$_DriveSummary({required this.capacity, required final List<Drive> drives})
      : _drives = drives,
        super._();

  factory _$_DriveSummary.fromJson(Map<String, dynamic> json) =>
      _$$_DriveSummaryFromJson(json);

  @override
  final DriveCapacity capacity;
  final List<Drive> _drives;
  @override
  List<Drive> get drives {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drives);
  }

  @override
  String toString() {
    return 'DriveSummary(capacity: $capacity, drives: $drives)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriveSummary &&
            const DeepCollectionEquality().equals(other.capacity, capacity) &&
            const DeepCollectionEquality().equals(other._drives, _drives));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(capacity),
      const DeepCollectionEquality().hash(_drives));

  @JsonKey(ignore: true)
  @override
  _$$_DriveSummaryCopyWith<_$_DriveSummary> get copyWith =>
      __$$_DriveSummaryCopyWithImpl<_$_DriveSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriveSummaryToJson(
      this,
    );
  }
}

abstract class _DriveSummary extends DriveSummary {
  factory _DriveSummary(
      {required final DriveCapacity capacity,
      required final List<Drive> drives}) = _$_DriveSummary;
  _DriveSummary._() : super._();

  factory _DriveSummary.fromJson(Map<String, dynamic> json) =
      _$_DriveSummary.fromJson;

  @override
  DriveCapacity get capacity;
  @override
  List<Drive> get drives;
  @override
  @JsonKey(ignore: true)
  _$$_DriveSummaryCopyWith<_$_DriveSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
