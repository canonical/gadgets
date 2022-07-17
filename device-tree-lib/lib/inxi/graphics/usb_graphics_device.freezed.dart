// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'usb_graphics_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

USBGraphicsDevice _$USBGraphicsDeviceFromJson(Map<String, dynamic> json) {
  return _USBGraphicsDevice.fromJson(json);
}

/// @nodoc
mixin _$USBGraphicsDevice {
  String get driver => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get chipID => throw _privateConstructorUsedError;
  String get busID => throw _privateConstructorUsedError;
  String get serial => throw _privateConstructorUsedError;
  String get classID => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $USBGraphicsDeviceCopyWith<USBGraphicsDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $USBGraphicsDeviceCopyWith<$Res> {
  factory $USBGraphicsDeviceCopyWith(
          USBGraphicsDevice value, $Res Function(USBGraphicsDevice) then) =
      _$USBGraphicsDeviceCopyWithImpl<$Res>;
  $Res call(
      {String driver,
      String name,
      String chipID,
      String busID,
      String serial,
      String classID,
      String type});
}

/// @nodoc
class _$USBGraphicsDeviceCopyWithImpl<$Res>
    implements $USBGraphicsDeviceCopyWith<$Res> {
  _$USBGraphicsDeviceCopyWithImpl(this._value, this._then);

  final USBGraphicsDevice _value;
  // ignore: unused_field
  final $Res Function(USBGraphicsDevice) _then;

  @override
  $Res call({
    Object? driver = freezed,
    Object? name = freezed,
    Object? chipID = freezed,
    Object? busID = freezed,
    Object? serial = freezed,
    Object? classID = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      chipID: chipID == freezed
          ? _value.chipID
          : chipID // ignore: cast_nullable_to_non_nullable
              as String,
      busID: busID == freezed
          ? _value.busID
          : busID // ignore: cast_nullable_to_non_nullable
              as String,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      classID: classID == freezed
          ? _value.classID
          : classID // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_USBGraphicsDeviceCopyWith<$Res>
    implements $USBGraphicsDeviceCopyWith<$Res> {
  factory _$$_USBGraphicsDeviceCopyWith(_$_USBGraphicsDevice value,
          $Res Function(_$_USBGraphicsDevice) then) =
      __$$_USBGraphicsDeviceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String driver,
      String name,
      String chipID,
      String busID,
      String serial,
      String classID,
      String type});
}

/// @nodoc
class __$$_USBGraphicsDeviceCopyWithImpl<$Res>
    extends _$USBGraphicsDeviceCopyWithImpl<$Res>
    implements _$$_USBGraphicsDeviceCopyWith<$Res> {
  __$$_USBGraphicsDeviceCopyWithImpl(
      _$_USBGraphicsDevice _value, $Res Function(_$_USBGraphicsDevice) _then)
      : super(_value, (v) => _then(v as _$_USBGraphicsDevice));

  @override
  _$_USBGraphicsDevice get _value => super._value as _$_USBGraphicsDevice;

  @override
  $Res call({
    Object? driver = freezed,
    Object? name = freezed,
    Object? chipID = freezed,
    Object? busID = freezed,
    Object? serial = freezed,
    Object? classID = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_USBGraphicsDevice(
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      chipID: chipID == freezed
          ? _value.chipID
          : chipID // ignore: cast_nullable_to_non_nullable
              as String,
      busID: busID == freezed
          ? _value.busID
          : busID // ignore: cast_nullable_to_non_nullable
              as String,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      classID: classID == freezed
          ? _value.classID
          : classID // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_USBGraphicsDevice extends _USBGraphicsDevice {
  _$_USBGraphicsDevice(
      {required this.driver,
      required this.name,
      required this.chipID,
      required this.busID,
      required this.serial,
      required this.classID,
      required this.type})
      : super._();

  factory _$_USBGraphicsDevice.fromJson(Map<String, dynamic> json) =>
      _$$_USBGraphicsDeviceFromJson(json);

  @override
  final String driver;
  @override
  final String name;
  @override
  final String chipID;
  @override
  final String busID;
  @override
  final String serial;
  @override
  final String classID;
  @override
  final String type;

  @override
  String toString() {
    return 'USBGraphicsDevice(driver: $driver, name: $name, chipID: $chipID, busID: $busID, serial: $serial, classID: $classID, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_USBGraphicsDevice &&
            const DeepCollectionEquality().equals(other.driver, driver) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.chipID, chipID) &&
            const DeepCollectionEquality().equals(other.busID, busID) &&
            const DeepCollectionEquality().equals(other.serial, serial) &&
            const DeepCollectionEquality().equals(other.classID, classID) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(driver),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(chipID),
      const DeepCollectionEquality().hash(busID),
      const DeepCollectionEquality().hash(serial),
      const DeepCollectionEquality().hash(classID),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_USBGraphicsDeviceCopyWith<_$_USBGraphicsDevice> get copyWith =>
      __$$_USBGraphicsDeviceCopyWithImpl<_$_USBGraphicsDevice>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_USBGraphicsDeviceToJson(
      this,
    );
  }
}

abstract class _USBGraphicsDevice extends USBGraphicsDevice {
  factory _USBGraphicsDevice(
      {required final String driver,
      required final String name,
      required final String chipID,
      required final String busID,
      required final String serial,
      required final String classID,
      required final String type}) = _$_USBGraphicsDevice;
  _USBGraphicsDevice._() : super._();

  factory _USBGraphicsDevice.fromJson(Map<String, dynamic> json) =
      _$_USBGraphicsDevice.fromJson;

  @override
  String get driver;
  @override
  String get name;
  @override
  String get chipID;
  @override
  String get busID;
  @override
  String get serial;
  @override
  String get classID;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_USBGraphicsDeviceCopyWith<_$_USBGraphicsDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
