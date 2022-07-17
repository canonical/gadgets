// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'usb_audio_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

USBAudioDevice _$USBAudioDeviceFromJson(Map<String, dynamic> json) {
  return _USBAudioDevice.fromJson(json);
}

/// @nodoc
mixin _$USBAudioDevice {
  String get name => throw _privateConstructorUsedError;
  String get driver => throw _privateConstructorUsedError;
  String get classID => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get vendor => throw _privateConstructorUsedError;
  String? get speed => throw _privateConstructorUsedError;
  String get busID => throw _privateConstructorUsedError;
  String get chipID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $USBAudioDeviceCopyWith<USBAudioDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $USBAudioDeviceCopyWith<$Res> {
  factory $USBAudioDeviceCopyWith(
          USBAudioDevice value, $Res Function(USBAudioDevice) then) =
      _$USBAudioDeviceCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String driver,
      String classID,
      String? version,
      String? vendor,
      String? speed,
      String busID,
      String chipID});
}

/// @nodoc
class _$USBAudioDeviceCopyWithImpl<$Res>
    implements $USBAudioDeviceCopyWith<$Res> {
  _$USBAudioDeviceCopyWithImpl(this._value, this._then);

  final USBAudioDevice _value;
  // ignore: unused_field
  final $Res Function(USBAudioDevice) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? driver = freezed,
    Object? classID = freezed,
    Object? version = freezed,
    Object? vendor = freezed,
    Object? speed = freezed,
    Object? busID = freezed,
    Object? chipID = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String,
      classID: classID == freezed
          ? _value.classID
          : classID // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String?,
      busID: busID == freezed
          ? _value.busID
          : busID // ignore: cast_nullable_to_non_nullable
              as String,
      chipID: chipID == freezed
          ? _value.chipID
          : chipID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_USBAudioDeviceCopyWith<$Res>
    implements $USBAudioDeviceCopyWith<$Res> {
  factory _$$_USBAudioDeviceCopyWith(
          _$_USBAudioDevice value, $Res Function(_$_USBAudioDevice) then) =
      __$$_USBAudioDeviceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String driver,
      String classID,
      String? version,
      String? vendor,
      String? speed,
      String busID,
      String chipID});
}

/// @nodoc
class __$$_USBAudioDeviceCopyWithImpl<$Res>
    extends _$USBAudioDeviceCopyWithImpl<$Res>
    implements _$$_USBAudioDeviceCopyWith<$Res> {
  __$$_USBAudioDeviceCopyWithImpl(
      _$_USBAudioDevice _value, $Res Function(_$_USBAudioDevice) _then)
      : super(_value, (v) => _then(v as _$_USBAudioDevice));

  @override
  _$_USBAudioDevice get _value => super._value as _$_USBAudioDevice;

  @override
  $Res call({
    Object? name = freezed,
    Object? driver = freezed,
    Object? classID = freezed,
    Object? version = freezed,
    Object? vendor = freezed,
    Object? speed = freezed,
    Object? busID = freezed,
    Object? chipID = freezed,
  }) {
    return _then(_$_USBAudioDevice(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String,
      classID: classID == freezed
          ? _value.classID
          : classID // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: vendor == freezed
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String?,
      busID: busID == freezed
          ? _value.busID
          : busID // ignore: cast_nullable_to_non_nullable
              as String,
      chipID: chipID == freezed
          ? _value.chipID
          : chipID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_USBAudioDevice extends _USBAudioDevice {
  _$_USBAudioDevice(
      {required this.name,
      required this.driver,
      required this.classID,
      this.version,
      this.vendor,
      this.speed,
      required this.busID,
      required this.chipID})
      : super._();

  factory _$_USBAudioDevice.fromJson(Map<String, dynamic> json) =>
      _$$_USBAudioDeviceFromJson(json);

  @override
  final String name;
  @override
  final String driver;
  @override
  final String classID;
  @override
  final String? version;
  @override
  final String? vendor;
  @override
  final String? speed;
  @override
  final String busID;
  @override
  final String chipID;

  @override
  String toString() {
    return 'USBAudioDevice(name: $name, driver: $driver, classID: $classID, version: $version, vendor: $vendor, speed: $speed, busID: $busID, chipID: $chipID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_USBAudioDevice &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.driver, driver) &&
            const DeepCollectionEquality().equals(other.classID, classID) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.vendor, vendor) &&
            const DeepCollectionEquality().equals(other.speed, speed) &&
            const DeepCollectionEquality().equals(other.busID, busID) &&
            const DeepCollectionEquality().equals(other.chipID, chipID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(driver),
      const DeepCollectionEquality().hash(classID),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(vendor),
      const DeepCollectionEquality().hash(speed),
      const DeepCollectionEquality().hash(busID),
      const DeepCollectionEquality().hash(chipID));

  @JsonKey(ignore: true)
  @override
  _$$_USBAudioDeviceCopyWith<_$_USBAudioDevice> get copyWith =>
      __$$_USBAudioDeviceCopyWithImpl<_$_USBAudioDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_USBAudioDeviceToJson(
      this,
    );
  }
}

abstract class _USBAudioDevice extends USBAudioDevice {
  factory _USBAudioDevice(
      {required final String name,
      required final String driver,
      required final String classID,
      final String? version,
      final String? vendor,
      final String? speed,
      required final String busID,
      required final String chipID}) = _$_USBAudioDevice;
  _USBAudioDevice._() : super._();

  factory _USBAudioDevice.fromJson(Map<String, dynamic> json) =
      _$_USBAudioDevice.fromJson;

  @override
  String get name;
  @override
  String get driver;
  @override
  String get classID;
  @override
  String? get version;
  @override
  String? get vendor;
  @override
  String? get speed;
  @override
  String get busID;
  @override
  String get chipID;
  @override
  @JsonKey(ignore: true)
  _$$_USBAudioDeviceCopyWith<_$_USBAudioDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
