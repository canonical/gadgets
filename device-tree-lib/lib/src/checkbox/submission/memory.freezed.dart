// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'memory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Memory _$MemoryFromJson(Map<String, dynamic> json) {
  return _Memory.fromJson(json);
}

/// @nodoc
mixin _$Memory {
  int? get swap => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoryCopyWith<Memory> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoryCopyWith<$Res> {
  factory $MemoryCopyWith(Memory value, $Res Function(Memory) then) =
      _$MemoryCopyWithImpl<$Res>;
  $Res call({int? swap, int? total});
}

/// @nodoc
class _$MemoryCopyWithImpl<$Res> implements $MemoryCopyWith<$Res> {
  _$MemoryCopyWithImpl(this._value, this._then);

  final Memory _value;
  // ignore: unused_field
  final $Res Function(Memory) _then;

  @override
  $Res call({
    Object? swap = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      swap: swap == freezed
          ? _value.swap
          : swap // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_MemoryCopyWith<$Res> implements $MemoryCopyWith<$Res> {
  factory _$$_MemoryCopyWith(_$_Memory value, $Res Function(_$_Memory) then) =
      __$$_MemoryCopyWithImpl<$Res>;
  @override
  $Res call({int? swap, int? total});
}

/// @nodoc
class __$$_MemoryCopyWithImpl<$Res> extends _$MemoryCopyWithImpl<$Res>
    implements _$$_MemoryCopyWith<$Res> {
  __$$_MemoryCopyWithImpl(_$_Memory _value, $Res Function(_$_Memory) _then)
      : super(_value, (v) => _then(v as _$_Memory));

  @override
  _$_Memory get _value => super._value as _$_Memory;

  @override
  $Res call({
    Object? swap = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_Memory(
      swap: swap == freezed
          ? _value.swap
          : swap // ignore: cast_nullable_to_non_nullable
              as int?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Memory implements _Memory {
  _$_Memory({this.swap, this.total});

  factory _$_Memory.fromJson(Map<String, dynamic> json) =>
      _$$_MemoryFromJson(json);

  @override
  final int? swap;
  @override
  final int? total;

  @override
  String toString() {
    return 'Memory(swap: $swap, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Memory &&
            const DeepCollectionEquality().equals(other.swap, swap) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(swap),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$_MemoryCopyWith<_$_Memory> get copyWith =>
      __$$_MemoryCopyWithImpl<_$_Memory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemoryToJson(
      this,
    );
  }
}

abstract class _Memory implements Memory {
  factory _Memory({final int? swap, final int? total}) = _$_Memory;

  factory _Memory.fromJson(Map<String, dynamic> json) = _$_Memory.fromJson;

  @override
  int? get swap;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_MemoryCopyWith<_$_Memory> get copyWith =>
      throw _privateConstructorUsedError;
}
