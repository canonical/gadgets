// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drive_capacity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DriveCapacity _$DriveCapacityFromJson(Map<String, dynamic> json) {
  return _DriveCapacity.fromJson(json);
}

/// @nodoc
mixin _$DriveCapacity {
  String get total => throw _privateConstructorUsedError;
  String get used => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DriveCapacityCopyWith<DriveCapacity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriveCapacityCopyWith<$Res> {
  factory $DriveCapacityCopyWith(
          DriveCapacity value, $Res Function(DriveCapacity) then) =
      _$DriveCapacityCopyWithImpl<$Res>;
  $Res call({String total, String used});
}

/// @nodoc
class _$DriveCapacityCopyWithImpl<$Res>
    implements $DriveCapacityCopyWith<$Res> {
  _$DriveCapacityCopyWithImpl(this._value, this._then);

  final DriveCapacity _value;
  // ignore: unused_field
  final $Res Function(DriveCapacity) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? used = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      used: used == freezed
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DriveCapacityCopyWith<$Res>
    implements $DriveCapacityCopyWith<$Res> {
  factory _$$_DriveCapacityCopyWith(
          _$_DriveCapacity value, $Res Function(_$_DriveCapacity) then) =
      __$$_DriveCapacityCopyWithImpl<$Res>;
  @override
  $Res call({String total, String used});
}

/// @nodoc
class __$$_DriveCapacityCopyWithImpl<$Res>
    extends _$DriveCapacityCopyWithImpl<$Res>
    implements _$$_DriveCapacityCopyWith<$Res> {
  __$$_DriveCapacityCopyWithImpl(
      _$_DriveCapacity _value, $Res Function(_$_DriveCapacity) _then)
      : super(_value, (v) => _then(v as _$_DriveCapacity));

  @override
  _$_DriveCapacity get _value => super._value as _$_DriveCapacity;

  @override
  $Res call({
    Object? total = freezed,
    Object? used = freezed,
  }) {
    return _then(_$_DriveCapacity(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      used: used == freezed
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DriveCapacity extends _DriveCapacity {
  _$_DriveCapacity({required this.total, required this.used}) : super._();

  factory _$_DriveCapacity.fromJson(Map<String, dynamic> json) =>
      _$$_DriveCapacityFromJson(json);

  @override
  final String total;
  @override
  final String used;

  @override
  String toString() {
    return 'DriveCapacity(total: $total, used: $used)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DriveCapacity &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.used, used));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(used));

  @JsonKey(ignore: true)
  @override
  _$$_DriveCapacityCopyWith<_$_DriveCapacity> get copyWith =>
      __$$_DriveCapacityCopyWithImpl<_$_DriveCapacity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DriveCapacityToJson(
      this,
    );
  }
}

abstract class _DriveCapacity extends DriveCapacity {
  factory _DriveCapacity(
      {required final String total,
      required final String used}) = _$_DriveCapacity;
  _DriveCapacity._() : super._();

  factory _DriveCapacity.fromJson(Map<String, dynamic> json) =
      _$_DriveCapacity.fromJson;

  @override
  String get total;
  @override
  String get used;
  @override
  @JsonKey(ignore: true)
  _$$_DriveCapacityCopyWith<_$_DriveCapacity> get copyWith =>
      throw _privateConstructorUsedError;
}
