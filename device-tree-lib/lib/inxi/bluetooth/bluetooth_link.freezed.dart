// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bluetooth_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BluetoothLink _$BluetoothLinkFromJson(Map<String, dynamic> json) {
  return _BluetoothLink.fromJson(json);
}

/// @nodoc
mixin _$BluetoothLink {
  String get linkPolicy => throw _privateConstructorUsedError;
  String get scoMTU => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;
  String get linkMode => throw _privateConstructorUsedError;
  String get aclMTU => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BluetoothLinkCopyWith<BluetoothLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothLinkCopyWith<$Res> {
  factory $BluetoothLinkCopyWith(
          BluetoothLink value, $Res Function(BluetoothLink) then) =
      _$BluetoothLinkCopyWithImpl<$Res>;
  $Res call(
      {String linkPolicy,
      String scoMTU,
      String info,
      String linkMode,
      String aclMTU});
}

/// @nodoc
class _$BluetoothLinkCopyWithImpl<$Res>
    implements $BluetoothLinkCopyWith<$Res> {
  _$BluetoothLinkCopyWithImpl(this._value, this._then);

  final BluetoothLink _value;
  // ignore: unused_field
  final $Res Function(BluetoothLink) _then;

  @override
  $Res call({
    Object? linkPolicy = freezed,
    Object? scoMTU = freezed,
    Object? info = freezed,
    Object? linkMode = freezed,
    Object? aclMTU = freezed,
  }) {
    return _then(_value.copyWith(
      linkPolicy: linkPolicy == freezed
          ? _value.linkPolicy
          : linkPolicy // ignore: cast_nullable_to_non_nullable
              as String,
      scoMTU: scoMTU == freezed
          ? _value.scoMTU
          : scoMTU // ignore: cast_nullable_to_non_nullable
              as String,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      linkMode: linkMode == freezed
          ? _value.linkMode
          : linkMode // ignore: cast_nullable_to_non_nullable
              as String,
      aclMTU: aclMTU == freezed
          ? _value.aclMTU
          : aclMTU // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BluetoothLinkCopyWith<$Res>
    implements $BluetoothLinkCopyWith<$Res> {
  factory _$$_BluetoothLinkCopyWith(
          _$_BluetoothLink value, $Res Function(_$_BluetoothLink) then) =
      __$$_BluetoothLinkCopyWithImpl<$Res>;
  @override
  $Res call(
      {String linkPolicy,
      String scoMTU,
      String info,
      String linkMode,
      String aclMTU});
}

/// @nodoc
class __$$_BluetoothLinkCopyWithImpl<$Res>
    extends _$BluetoothLinkCopyWithImpl<$Res>
    implements _$$_BluetoothLinkCopyWith<$Res> {
  __$$_BluetoothLinkCopyWithImpl(
      _$_BluetoothLink _value, $Res Function(_$_BluetoothLink) _then)
      : super(_value, (v) => _then(v as _$_BluetoothLink));

  @override
  _$_BluetoothLink get _value => super._value as _$_BluetoothLink;

  @override
  $Res call({
    Object? linkPolicy = freezed,
    Object? scoMTU = freezed,
    Object? info = freezed,
    Object? linkMode = freezed,
    Object? aclMTU = freezed,
  }) {
    return _then(_$_BluetoothLink(
      linkPolicy: linkPolicy == freezed
          ? _value.linkPolicy
          : linkPolicy // ignore: cast_nullable_to_non_nullable
              as String,
      scoMTU: scoMTU == freezed
          ? _value.scoMTU
          : scoMTU // ignore: cast_nullable_to_non_nullable
              as String,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      linkMode: linkMode == freezed
          ? _value.linkMode
          : linkMode // ignore: cast_nullable_to_non_nullable
              as String,
      aclMTU: aclMTU == freezed
          ? _value.aclMTU
          : aclMTU // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BluetoothLink extends _BluetoothLink {
  _$_BluetoothLink(
      {required this.linkPolicy,
      required this.scoMTU,
      required this.info,
      required this.linkMode,
      required this.aclMTU})
      : super._();

  factory _$_BluetoothLink.fromJson(Map<String, dynamic> json) =>
      _$$_BluetoothLinkFromJson(json);

  @override
  final String linkPolicy;
  @override
  final String scoMTU;
  @override
  final String info;
  @override
  final String linkMode;
  @override
  final String aclMTU;

  @override
  String toString() {
    return 'BluetoothLink(linkPolicy: $linkPolicy, scoMTU: $scoMTU, info: $info, linkMode: $linkMode, aclMTU: $aclMTU)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BluetoothLink &&
            const DeepCollectionEquality()
                .equals(other.linkPolicy, linkPolicy) &&
            const DeepCollectionEquality().equals(other.scoMTU, scoMTU) &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.linkMode, linkMode) &&
            const DeepCollectionEquality().equals(other.aclMTU, aclMTU));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(linkPolicy),
      const DeepCollectionEquality().hash(scoMTU),
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(linkMode),
      const DeepCollectionEquality().hash(aclMTU));

  @JsonKey(ignore: true)
  @override
  _$$_BluetoothLinkCopyWith<_$_BluetoothLink> get copyWith =>
      __$$_BluetoothLinkCopyWithImpl<_$_BluetoothLink>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BluetoothLinkToJson(
      this,
    );
  }
}

abstract class _BluetoothLink extends BluetoothLink {
  factory _BluetoothLink(
      {required final String linkPolicy,
      required final String scoMTU,
      required final String info,
      required final String linkMode,
      required final String aclMTU}) = _$_BluetoothLink;
  _BluetoothLink._() : super._();

  factory _BluetoothLink.fromJson(Map<String, dynamic> json) =
      _$_BluetoothLink.fromJson;

  @override
  String get linkPolicy;
  @override
  String get scoMTU;
  @override
  String get info;
  @override
  String get linkMode;
  @override
  String get aclMTU;
  @override
  @JsonKey(ignore: true)
  _$$_BluetoothLinkCopyWith<_$_BluetoothLink> get copyWith =>
      throw _privateConstructorUsedError;
}
