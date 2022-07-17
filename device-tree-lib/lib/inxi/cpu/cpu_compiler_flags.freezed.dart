// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cpu_compiler_flags.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CPUCompilerFlags _$CPUCompilerFlagsFromJson(Map<String, dynamic> json) {
  return _CPUCompilerFlags.fromJson(json);
}

/// @nodoc
mixin _$CPUCompilerFlags {
  String get flags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CPUCompilerFlagsCopyWith<CPUCompilerFlags> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPUCompilerFlagsCopyWith<$Res> {
  factory $CPUCompilerFlagsCopyWith(
          CPUCompilerFlags value, $Res Function(CPUCompilerFlags) then) =
      _$CPUCompilerFlagsCopyWithImpl<$Res>;
  $Res call({String flags});
}

/// @nodoc
class _$CPUCompilerFlagsCopyWithImpl<$Res>
    implements $CPUCompilerFlagsCopyWith<$Res> {
  _$CPUCompilerFlagsCopyWithImpl(this._value, this._then);

  final CPUCompilerFlags _value;
  // ignore: unused_field
  final $Res Function(CPUCompilerFlags) _then;

  @override
  $Res call({
    Object? flags = freezed,
  }) {
    return _then(_value.copyWith(
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CPUCompilerFlagsCopyWith<$Res>
    implements $CPUCompilerFlagsCopyWith<$Res> {
  factory _$$_CPUCompilerFlagsCopyWith(
          _$_CPUCompilerFlags value, $Res Function(_$_CPUCompilerFlags) then) =
      __$$_CPUCompilerFlagsCopyWithImpl<$Res>;
  @override
  $Res call({String flags});
}

/// @nodoc
class __$$_CPUCompilerFlagsCopyWithImpl<$Res>
    extends _$CPUCompilerFlagsCopyWithImpl<$Res>
    implements _$$_CPUCompilerFlagsCopyWith<$Res> {
  __$$_CPUCompilerFlagsCopyWithImpl(
      _$_CPUCompilerFlags _value, $Res Function(_$_CPUCompilerFlags) _then)
      : super(_value, (v) => _then(v as _$_CPUCompilerFlags));

  @override
  _$_CPUCompilerFlags get _value => super._value as _$_CPUCompilerFlags;

  @override
  $Res call({
    Object? flags = freezed,
  }) {
    return _then(_$_CPUCompilerFlags(
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CPUCompilerFlags extends _CPUCompilerFlags {
  _$_CPUCompilerFlags({required this.flags}) : super._();

  factory _$_CPUCompilerFlags.fromJson(Map<String, dynamic> json) =>
      _$$_CPUCompilerFlagsFromJson(json);

  @override
  final String flags;

  @override
  String toString() {
    return 'CPUCompilerFlags(flags: $flags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CPUCompilerFlags &&
            const DeepCollectionEquality().equals(other.flags, flags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(flags));

  @JsonKey(ignore: true)
  @override
  _$$_CPUCompilerFlagsCopyWith<_$_CPUCompilerFlags> get copyWith =>
      __$$_CPUCompilerFlagsCopyWithImpl<_$_CPUCompilerFlags>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CPUCompilerFlagsToJson(
      this,
    );
  }
}

abstract class _CPUCompilerFlags extends CPUCompilerFlags {
  factory _CPUCompilerFlags({required final String flags}) =
      _$_CPUCompilerFlags;
  _CPUCompilerFlags._() : super._();

  factory _CPUCompilerFlags.fromJson(Map<String, dynamic> json) =
      _$_CPUCompilerFlags.fromJson;

  @override
  String get flags;
  @override
  @JsonKey(ignore: true)
  _$$_CPUCompilerFlagsCopyWith<_$_CPUCompilerFlags> get copyWith =>
      throw _privateConstructorUsedError;
}
