// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dkms_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DkmsInfo _$DkmsInfoFromJson(Map<String, dynamic> json) {
  return _DkmsInfo.fromJson(json);
}

/// @nodoc
mixin _$DkmsInfo {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DkmsInfoCopyWith<$Res> {
  factory $DkmsInfoCopyWith(DkmsInfo value, $Res Function(DkmsInfo) then) =
      _$DkmsInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$DkmsInfoCopyWithImpl<$Res> implements $DkmsInfoCopyWith<$Res> {
  _$DkmsInfoCopyWithImpl(this._value, this._then);

  final DkmsInfo _value;
  // ignore: unused_field
  final $Res Function(DkmsInfo) _then;
}

/// @nodoc
abstract class _$$_DkmsInfoCopyWith<$Res> {
  factory _$$_DkmsInfoCopyWith(
          _$_DkmsInfo value, $Res Function(_$_DkmsInfo) then) =
      __$$_DkmsInfoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DkmsInfoCopyWithImpl<$Res> extends _$DkmsInfoCopyWithImpl<$Res>
    implements _$$_DkmsInfoCopyWith<$Res> {
  __$$_DkmsInfoCopyWithImpl(
      _$_DkmsInfo _value, $Res Function(_$_DkmsInfo) _then)
      : super(_value, (v) => _then(v as _$_DkmsInfo));

  @override
  _$_DkmsInfo get _value => super._value as _$_DkmsInfo;
}

/// @nodoc
@JsonSerializable()
class _$_DkmsInfo implements _DkmsInfo {
  const _$_DkmsInfo();

  factory _$_DkmsInfo.fromJson(Map<String, dynamic> json) =>
      _$$_DkmsInfoFromJson(json);

  @override
  String toString() {
    return 'DkmsInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DkmsInfo);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_DkmsInfoToJson(
      this,
    );
  }
}

abstract class _DkmsInfo implements DkmsInfo {
  const factory _DkmsInfo() = _$_DkmsInfo;

  factory _DkmsInfo.fromJson(Map<String, dynamic> json) = _$_DkmsInfo.fromJson;
}
