// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'memory_capacity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemoryCapacity _$MemoryCapacityFromJson(Map<String, dynamic> json) {
  return _MemoryCapacity.fromJson(json);
}

/// @nodoc
mixin _$MemoryCapacity {
  String get total => throw _privateConstructorUsedError;
  String get used => throw _privateConstructorUsedError;
  String get ram => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoryCapacityCopyWith<MemoryCapacity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryCapacityCopyWith<$Res> {
  factory $MemoryCapacityCopyWith(
          MemoryCapacity value, $Res Function(MemoryCapacity) then) =
      _$MemoryCapacityCopyWithImpl<$Res>;
  $Res call({String total, String used, String ram});
}

/// @nodoc
class _$MemoryCapacityCopyWithImpl<$Res>
    implements $MemoryCapacityCopyWith<$Res> {
  _$MemoryCapacityCopyWithImpl(this._value, this._then);

  final MemoryCapacity _value;
  // ignore: unused_field
  final $Res Function(MemoryCapacity) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? used = freezed,
    Object? ram = freezed,
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
      ram: ram == freezed
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MemoryCapacityCopyWith<$Res>
    implements $MemoryCapacityCopyWith<$Res> {
  factory _$$_MemoryCapacityCopyWith(
          _$_MemoryCapacity value, $Res Function(_$_MemoryCapacity) then) =
      __$$_MemoryCapacityCopyWithImpl<$Res>;
  @override
  $Res call({String total, String used, String ram});
}

/// @nodoc
class __$$_MemoryCapacityCopyWithImpl<$Res>
    extends _$MemoryCapacityCopyWithImpl<$Res>
    implements _$$_MemoryCapacityCopyWith<$Res> {
  __$$_MemoryCapacityCopyWithImpl(
      _$_MemoryCapacity _value, $Res Function(_$_MemoryCapacity) _then)
      : super(_value, (v) => _then(v as _$_MemoryCapacity));

  @override
  _$_MemoryCapacity get _value => super._value as _$_MemoryCapacity;

  @override
  $Res call({
    Object? total = freezed,
    Object? used = freezed,
    Object? ram = freezed,
  }) {
    return _then(_$_MemoryCapacity(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      used: used == freezed
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as String,
      ram: ram == freezed
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemoryCapacity extends _MemoryCapacity {
  _$_MemoryCapacity(
      {required this.total, required this.used, required this.ram})
      : super._();

  factory _$_MemoryCapacity.fromJson(Map<String, dynamic> json) =>
      _$$_MemoryCapacityFromJson(json);

  @override
  final String total;
  @override
  final String used;
  @override
  final String ram;

  @override
  String toString() {
    return 'MemoryCapacity(total: $total, used: $used, ram: $ram)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemoryCapacity &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.used, used) &&
            const DeepCollectionEquality().equals(other.ram, ram));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(used),
      const DeepCollectionEquality().hash(ram));

  @JsonKey(ignore: true)
  @override
  _$$_MemoryCapacityCopyWith<_$_MemoryCapacity> get copyWith =>
      __$$_MemoryCapacityCopyWithImpl<_$_MemoryCapacity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemoryCapacityToJson(
      this,
    );
  }
}

abstract class _MemoryCapacity extends MemoryCapacity {
  factory _MemoryCapacity(
      {required final String total,
      required final String used,
      required final String ram}) = _$_MemoryCapacity;
  _MemoryCapacity._() : super._();

  factory _MemoryCapacity.fromJson(Map<String, dynamic> json) =
      _$_MemoryCapacity.fromJson;

  @override
  String get total;
  @override
  String get used;
  @override
  String get ram;
  @override
  @JsonKey(ignore: true)
  _$$_MemoryCapacityCopyWith<_$_MemoryCapacity> get copyWith =>
      throw _privateConstructorUsedError;
}
