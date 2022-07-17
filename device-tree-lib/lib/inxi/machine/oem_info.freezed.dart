// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'oem_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OEMInfo _$OEMInfoFromJson(Map<String, dynamic> json) {
  return _OEMInfo.fromJson(json);
}

/// @nodoc
mixin _$OEMInfo {
  String get serial => throw _privateConstructorUsedError;
  int get typeIdentifier => throw _privateConstructorUsedError;
  String get typeName => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get product => throw _privateConstructorUsedError;
  String get system => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OEMInfoCopyWith<OEMInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OEMInfoCopyWith<$Res> {
  factory $OEMInfoCopyWith(OEMInfo value, $Res Function(OEMInfo) then) =
      _$OEMInfoCopyWithImpl<$Res>;
  $Res call(
      {String serial,
      int typeIdentifier,
      String typeName,
      String version,
      String product,
      String system});
}

/// @nodoc
class _$OEMInfoCopyWithImpl<$Res> implements $OEMInfoCopyWith<$Res> {
  _$OEMInfoCopyWithImpl(this._value, this._then);

  final OEMInfo _value;
  // ignore: unused_field
  final $Res Function(OEMInfo) _then;

  @override
  $Res call({
    Object? serial = freezed,
    Object? typeIdentifier = freezed,
    Object? typeName = freezed,
    Object? version = freezed,
    Object? product = freezed,
    Object? system = freezed,
  }) {
    return _then(_value.copyWith(
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      typeIdentifier: typeIdentifier == freezed
          ? _value.typeIdentifier
          : typeIdentifier // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: typeName == freezed
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      system: system == freezed
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_OEMInfoCopyWith<$Res> implements $OEMInfoCopyWith<$Res> {
  factory _$$_OEMInfoCopyWith(
          _$_OEMInfo value, $Res Function(_$_OEMInfo) then) =
      __$$_OEMInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String serial,
      int typeIdentifier,
      String typeName,
      String version,
      String product,
      String system});
}

/// @nodoc
class __$$_OEMInfoCopyWithImpl<$Res> extends _$OEMInfoCopyWithImpl<$Res>
    implements _$$_OEMInfoCopyWith<$Res> {
  __$$_OEMInfoCopyWithImpl(_$_OEMInfo _value, $Res Function(_$_OEMInfo) _then)
      : super(_value, (v) => _then(v as _$_OEMInfo));

  @override
  _$_OEMInfo get _value => super._value as _$_OEMInfo;

  @override
  $Res call({
    Object? serial = freezed,
    Object? typeIdentifier = freezed,
    Object? typeName = freezed,
    Object? version = freezed,
    Object? product = freezed,
    Object? system = freezed,
  }) {
    return _then(_$_OEMInfo(
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      typeIdentifier: typeIdentifier == freezed
          ? _value.typeIdentifier
          : typeIdentifier // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: typeName == freezed
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String,
      system: system == freezed
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OEMInfo extends _OEMInfo {
  _$_OEMInfo(
      {required this.serial,
      required this.typeIdentifier,
      required this.typeName,
      required this.version,
      required this.product,
      required this.system})
      : super._();

  factory _$_OEMInfo.fromJson(Map<String, dynamic> json) =>
      _$$_OEMInfoFromJson(json);

  @override
  final String serial;
  @override
  final int typeIdentifier;
  @override
  final String typeName;
  @override
  final String version;
  @override
  final String product;
  @override
  final String system;

  @override
  String toString() {
    return 'OEMInfo(serial: $serial, typeIdentifier: $typeIdentifier, typeName: $typeName, version: $version, product: $product, system: $system)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OEMInfo &&
            const DeepCollectionEquality().equals(other.serial, serial) &&
            const DeepCollectionEquality()
                .equals(other.typeIdentifier, typeIdentifier) &&
            const DeepCollectionEquality().equals(other.typeName, typeName) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.system, system));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(serial),
      const DeepCollectionEquality().hash(typeIdentifier),
      const DeepCollectionEquality().hash(typeName),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(system));

  @JsonKey(ignore: true)
  @override
  _$$_OEMInfoCopyWith<_$_OEMInfo> get copyWith =>
      __$$_OEMInfoCopyWithImpl<_$_OEMInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OEMInfoToJson(
      this,
    );
  }
}

abstract class _OEMInfo extends OEMInfo {
  factory _OEMInfo(
      {required final String serial,
      required final int typeIdentifier,
      required final String typeName,
      required final String version,
      required final String product,
      required final String system}) = _$_OEMInfo;
  _OEMInfo._() : super._();

  factory _OEMInfo.fromJson(Map<String, dynamic> json) = _$_OEMInfo.fromJson;

  @override
  String get serial;
  @override
  int get typeIdentifier;
  @override
  String get typeName;
  @override
  String get version;
  @override
  String get product;
  @override
  String get system;
  @override
  @JsonKey(ignore: true)
  _$$_OEMInfoCopyWith<_$_OEMInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
