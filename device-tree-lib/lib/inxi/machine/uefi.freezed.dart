// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'uefi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UEFI _$UEFIFromJson(Map<String, dynamic> json) {
  return _UEFI.fromJson(json);
}

/// @nodoc
mixin _$UEFI {
  String get uefi => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get motherboardModel => throw _privateConstructorUsedError;
  String get serial => throw _privateConstructorUsedError;
  String get motherboardVendor => throw _privateConstructorUsedError;
  String? get machineType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UEFICopyWith<UEFI> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UEFICopyWith<$Res> {
  factory $UEFICopyWith(UEFI value, $Res Function(UEFI) then) =
      _$UEFICopyWithImpl<$Res>;
  $Res call(
      {String uefi,
      String version,
      String date,
      String motherboardModel,
      String serial,
      String motherboardVendor,
      String? machineType});
}

/// @nodoc
class _$UEFICopyWithImpl<$Res> implements $UEFICopyWith<$Res> {
  _$UEFICopyWithImpl(this._value, this._then);

  final UEFI _value;
  // ignore: unused_field
  final $Res Function(UEFI) _then;

  @override
  $Res call({
    Object? uefi = freezed,
    Object? version = freezed,
    Object? date = freezed,
    Object? motherboardModel = freezed,
    Object? serial = freezed,
    Object? motherboardVendor = freezed,
    Object? machineType = freezed,
  }) {
    return _then(_value.copyWith(
      uefi: uefi == freezed
          ? _value.uefi
          : uefi // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      motherboardModel: motherboardModel == freezed
          ? _value.motherboardModel
          : motherboardModel // ignore: cast_nullable_to_non_nullable
              as String,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      motherboardVendor: motherboardVendor == freezed
          ? _value.motherboardVendor
          : motherboardVendor // ignore: cast_nullable_to_non_nullable
              as String,
      machineType: machineType == freezed
          ? _value.machineType
          : machineType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UEFICopyWith<$Res> implements $UEFICopyWith<$Res> {
  factory _$$_UEFICopyWith(_$_UEFI value, $Res Function(_$_UEFI) then) =
      __$$_UEFICopyWithImpl<$Res>;
  @override
  $Res call(
      {String uefi,
      String version,
      String date,
      String motherboardModel,
      String serial,
      String motherboardVendor,
      String? machineType});
}

/// @nodoc
class __$$_UEFICopyWithImpl<$Res> extends _$UEFICopyWithImpl<$Res>
    implements _$$_UEFICopyWith<$Res> {
  __$$_UEFICopyWithImpl(_$_UEFI _value, $Res Function(_$_UEFI) _then)
      : super(_value, (v) => _then(v as _$_UEFI));

  @override
  _$_UEFI get _value => super._value as _$_UEFI;

  @override
  $Res call({
    Object? uefi = freezed,
    Object? version = freezed,
    Object? date = freezed,
    Object? motherboardModel = freezed,
    Object? serial = freezed,
    Object? motherboardVendor = freezed,
    Object? machineType = freezed,
  }) {
    return _then(_$_UEFI(
      uefi: uefi == freezed
          ? _value.uefi
          : uefi // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      motherboardModel: motherboardModel == freezed
          ? _value.motherboardModel
          : motherboardModel // ignore: cast_nullable_to_non_nullable
              as String,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      motherboardVendor: motherboardVendor == freezed
          ? _value.motherboardVendor
          : motherboardVendor // ignore: cast_nullable_to_non_nullable
              as String,
      machineType: machineType == freezed
          ? _value.machineType
          : machineType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UEFI extends _UEFI {
  _$_UEFI(
      {required this.uefi,
      required this.version,
      required this.date,
      required this.motherboardModel,
      required this.serial,
      required this.motherboardVendor,
      this.machineType})
      : super._();

  factory _$_UEFI.fromJson(Map<String, dynamic> json) => _$$_UEFIFromJson(json);

  @override
  final String uefi;
  @override
  final String version;
  @override
  final String date;
  @override
  final String motherboardModel;
  @override
  final String serial;
  @override
  final String motherboardVendor;
  @override
  final String? machineType;

  @override
  String toString() {
    return 'UEFI(uefi: $uefi, version: $version, date: $date, motherboardModel: $motherboardModel, serial: $serial, motherboardVendor: $motherboardVendor, machineType: $machineType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UEFI &&
            const DeepCollectionEquality().equals(other.uefi, uefi) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.motherboardModel, motherboardModel) &&
            const DeepCollectionEquality().equals(other.serial, serial) &&
            const DeepCollectionEquality()
                .equals(other.motherboardVendor, motherboardVendor) &&
            const DeepCollectionEquality()
                .equals(other.machineType, machineType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uefi),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(motherboardModel),
      const DeepCollectionEquality().hash(serial),
      const DeepCollectionEquality().hash(motherboardVendor),
      const DeepCollectionEquality().hash(machineType));

  @JsonKey(ignore: true)
  @override
  _$$_UEFICopyWith<_$_UEFI> get copyWith =>
      __$$_UEFICopyWithImpl<_$_UEFI>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UEFIToJson(
      this,
    );
  }
}

abstract class _UEFI extends UEFI {
  factory _UEFI(
      {required final String uefi,
      required final String version,
      required final String date,
      required final String motherboardModel,
      required final String serial,
      required final String motherboardVendor,
      final String? machineType}) = _$_UEFI;
  _UEFI._() : super._();

  factory _UEFI.fromJson(Map<String, dynamic> json) = _$_UEFI.fromJson;

  @override
  String get uefi;
  @override
  String get version;
  @override
  String get date;
  @override
  String get motherboardModel;
  @override
  String get serial;
  @override
  String get motherboardVendor;
  @override
  String? get machineType;
  @override
  @JsonKey(ignore: true)
  _$$_UEFICopyWith<_$_UEFI> get copyWith => throw _privateConstructorUsedError;
}
