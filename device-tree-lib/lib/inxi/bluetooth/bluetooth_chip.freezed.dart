// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bluetooth_chip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BluetoothChip _$BluetoothChipFromJson(Map<String, dynamic> json) {
  return _BluetoothChip.fromJson(json);
}

/// @nodoc
mixin _$BluetoothChip {
  String get chipID => throw _privateConstructorUsedError;
  String get busID => throw _privateConstructorUsedError;
  String get driver => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get device => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get classID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BluetoothChipCopyWith<BluetoothChip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothChipCopyWith<$Res> {
  factory $BluetoothChipCopyWith(
          BluetoothChip value, $Res Function(BluetoothChip) then) =
      _$BluetoothChipCopyWithImpl<$Res>;
  $Res call(
      {String chipID,
      String busID,
      String driver,
      String version,
      String device,
      String type,
      String classID});
}

/// @nodoc
class _$BluetoothChipCopyWithImpl<$Res>
    implements $BluetoothChipCopyWith<$Res> {
  _$BluetoothChipCopyWithImpl(this._value, this._then);

  final BluetoothChip _value;
  // ignore: unused_field
  final $Res Function(BluetoothChip) _then;

  @override
  $Res call({
    Object? chipID = freezed,
    Object? busID = freezed,
    Object? driver = freezed,
    Object? version = freezed,
    Object? device = freezed,
    Object? type = freezed,
    Object? classID = freezed,
  }) {
    return _then(_value.copyWith(
      chipID: chipID == freezed
          ? _value.chipID
          : chipID // ignore: cast_nullable_to_non_nullable
              as String,
      busID: busID == freezed
          ? _value.busID
          : busID // ignore: cast_nullable_to_non_nullable
              as String,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      classID: classID == freezed
          ? _value.classID
          : classID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BluetoothChipCopyWith<$Res>
    implements $BluetoothChipCopyWith<$Res> {
  factory _$$_BluetoothChipCopyWith(
          _$_BluetoothChip value, $Res Function(_$_BluetoothChip) then) =
      __$$_BluetoothChipCopyWithImpl<$Res>;
  @override
  $Res call(
      {String chipID,
      String busID,
      String driver,
      String version,
      String device,
      String type,
      String classID});
}

/// @nodoc
class __$$_BluetoothChipCopyWithImpl<$Res>
    extends _$BluetoothChipCopyWithImpl<$Res>
    implements _$$_BluetoothChipCopyWith<$Res> {
  __$$_BluetoothChipCopyWithImpl(
      _$_BluetoothChip _value, $Res Function(_$_BluetoothChip) _then)
      : super(_value, (v) => _then(v as _$_BluetoothChip));

  @override
  _$_BluetoothChip get _value => super._value as _$_BluetoothChip;

  @override
  $Res call({
    Object? chipID = freezed,
    Object? busID = freezed,
    Object? driver = freezed,
    Object? version = freezed,
    Object? device = freezed,
    Object? type = freezed,
    Object? classID = freezed,
  }) {
    return _then(_$_BluetoothChip(
      chipID: chipID == freezed
          ? _value.chipID
          : chipID // ignore: cast_nullable_to_non_nullable
              as String,
      busID: busID == freezed
          ? _value.busID
          : busID // ignore: cast_nullable_to_non_nullable
              as String,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      classID: classID == freezed
          ? _value.classID
          : classID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BluetoothChip extends _BluetoothChip {
  _$_BluetoothChip(
      {required this.chipID,
      required this.busID,
      required this.driver,
      required this.version,
      required this.device,
      required this.type,
      required this.classID})
      : super._();

  factory _$_BluetoothChip.fromJson(Map<String, dynamic> json) =>
      _$$_BluetoothChipFromJson(json);

  @override
  final String chipID;
  @override
  final String busID;
  @override
  final String driver;
  @override
  final String version;
  @override
  final String device;
  @override
  final String type;
  @override
  final String classID;

  @override
  String toString() {
    return 'BluetoothChip(chipID: $chipID, busID: $busID, driver: $driver, version: $version, device: $device, type: $type, classID: $classID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BluetoothChip &&
            const DeepCollectionEquality().equals(other.chipID, chipID) &&
            const DeepCollectionEquality().equals(other.busID, busID) &&
            const DeepCollectionEquality().equals(other.driver, driver) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.device, device) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.classID, classID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chipID),
      const DeepCollectionEquality().hash(busID),
      const DeepCollectionEquality().hash(driver),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(device),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(classID));

  @JsonKey(ignore: true)
  @override
  _$$_BluetoothChipCopyWith<_$_BluetoothChip> get copyWith =>
      __$$_BluetoothChipCopyWithImpl<_$_BluetoothChip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BluetoothChipToJson(
      this,
    );
  }
}

abstract class _BluetoothChip extends BluetoothChip {
  factory _BluetoothChip(
      {required final String chipID,
      required final String busID,
      required final String driver,
      required final String version,
      required final String device,
      required final String type,
      required final String classID}) = _$_BluetoothChip;
  _BluetoothChip._() : super._();

  factory _BluetoothChip.fromJson(Map<String, dynamic> json) =
      _$_BluetoothChip.fromJson;

  @override
  String get chipID;
  @override
  String get busID;
  @override
  String get driver;
  @override
  String get version;
  @override
  String get device;
  @override
  String get type;
  @override
  String get classID;
  @override
  @JsonKey(ignore: true)
  _$$_BluetoothChipCopyWith<_$_BluetoothChip> get copyWith =>
      throw _privateConstructorUsedError;
}
