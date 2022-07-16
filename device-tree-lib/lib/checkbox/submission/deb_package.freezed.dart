// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deb_package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DebPackage _$DebPackageFromJson(Map<String, dynamic> json) {
  return _DebPackage.fromJson(json);
}

/// @nodoc
mixin _$DebPackage {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebPackageCopyWith<$Res> {
  factory $DebPackageCopyWith(
          DebPackage value, $Res Function(DebPackage) then) =
      _$DebPackageCopyWithImpl<$Res>;
}

/// @nodoc
class _$DebPackageCopyWithImpl<$Res> implements $DebPackageCopyWith<$Res> {
  _$DebPackageCopyWithImpl(this._value, this._then);

  final DebPackage _value;
  // ignore: unused_field
  final $Res Function(DebPackage) _then;
}

/// @nodoc
abstract class _$$_DebPackageCopyWith<$Res> {
  factory _$$_DebPackageCopyWith(
          _$_DebPackage value, $Res Function(_$_DebPackage) then) =
      __$$_DebPackageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DebPackageCopyWithImpl<$Res> extends _$DebPackageCopyWithImpl<$Res>
    implements _$$_DebPackageCopyWith<$Res> {
  __$$_DebPackageCopyWithImpl(
      _$_DebPackage _value, $Res Function(_$_DebPackage) _then)
      : super(_value, (v) => _then(v as _$_DebPackage));

  @override
  _$_DebPackage get _value => super._value as _$_DebPackage;
}

/// @nodoc
@JsonSerializable()
class _$_DebPackage implements _DebPackage {
  const _$_DebPackage();

  factory _$_DebPackage.fromJson(Map<String, dynamic> json) =>
      _$$_DebPackageFromJson(json);

  @override
  String toString() {
    return 'DebPackage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DebPackage);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_DebPackageToJson(
      this,
    );
  }
}

abstract class _DebPackage implements DebPackage {
  const factory _DebPackage() = _$_DebPackage;

  factory _DebPackage.fromJson(Map<String, dynamic> json) =
      _$_DebPackage.fromJson;
}
