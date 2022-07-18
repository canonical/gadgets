// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'usb.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

USBSummary _$USBSummaryFromJson(Map<String, dynamic> json) {
  return _USBSummary.fromJson(json);
}

/// @nodoc
mixin _$USBSummary {
  List<USBDevice> get devices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $USBSummaryCopyWith<USBSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $USBSummaryCopyWith<$Res> {
  factory $USBSummaryCopyWith(
          USBSummary value, $Res Function(USBSummary) then) =
      _$USBSummaryCopyWithImpl<$Res>;
  $Res call({List<USBDevice> devices});
}

/// @nodoc
class _$USBSummaryCopyWithImpl<$Res> implements $USBSummaryCopyWith<$Res> {
  _$USBSummaryCopyWithImpl(this._value, this._then);

  final USBSummary _value;
  // ignore: unused_field
  final $Res Function(USBSummary) _then;

  @override
  $Res call({
    Object? devices = freezed,
  }) {
    return _then(_value.copyWith(
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<USBDevice>,
    ));
  }
}

/// @nodoc
abstract class _$$_USBSummaryCopyWith<$Res>
    implements $USBSummaryCopyWith<$Res> {
  factory _$$_USBSummaryCopyWith(
          _$_USBSummary value, $Res Function(_$_USBSummary) then) =
      __$$_USBSummaryCopyWithImpl<$Res>;
  @override
  $Res call({List<USBDevice> devices});
}

/// @nodoc
class __$$_USBSummaryCopyWithImpl<$Res> extends _$USBSummaryCopyWithImpl<$Res>
    implements _$$_USBSummaryCopyWith<$Res> {
  __$$_USBSummaryCopyWithImpl(
      _$_USBSummary _value, $Res Function(_$_USBSummary) _then)
      : super(_value, (v) => _then(v as _$_USBSummary));

  @override
  _$_USBSummary get _value => super._value as _$_USBSummary;

  @override
  $Res call({
    Object? devices = freezed,
  }) {
    return _then(_$_USBSummary(
      devices: devices == freezed
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<USBDevice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_USBSummary extends _USBSummary {
  _$_USBSummary({required final List<USBDevice> devices})
      : _devices = devices,
        super._();

  factory _$_USBSummary.fromJson(Map<String, dynamic> json) =>
      _$$_USBSummaryFromJson(json);

  final List<USBDevice> _devices;
  @override
  List<USBDevice> get devices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  @override
  String toString() {
    return 'USBSummary(devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_USBSummary &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  _$$_USBSummaryCopyWith<_$_USBSummary> get copyWith =>
      __$$_USBSummaryCopyWithImpl<_$_USBSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_USBSummaryToJson(
      this,
    );
  }
}

abstract class _USBSummary extends USBSummary {
  factory _USBSummary({required final List<USBDevice> devices}) = _$_USBSummary;
  _USBSummary._() : super._();

  factory _USBSummary.fromJson(Map<String, dynamic> json) =
      _$_USBSummary.fromJson;

  @override
  List<USBDevice> get devices;
  @override
  @JsonKey(ignore: true)
  _$$_USBSummaryCopyWith<_$_USBSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

USBDevice _$USBDeviceFromJson(Map<String, dynamic> json) {
  return _USBDevice.fromJson(json);
}

/// @nodoc
mixin _$USBDevice {
  String get revision => throw _privateConstructorUsedError;
  String get speed => throw _privateConstructorUsedError;
  String get chipID => throw _privateConstructorUsedError;
  String? get hub => throw _privateConstructorUsedError;
  String get info => throw _privateConstructorUsedError;
  int? get ports => throw _privateConstructorUsedError;
  String get classID => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get serial => throw _privateConstructorUsedError;
  String? get driver => throw _privateConstructorUsedError;
  String? get interfaces => throw _privateConstructorUsedError;
  String? get power => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $USBDeviceCopyWith<USBDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $USBDeviceCopyWith<$Res> {
  factory $USBDeviceCopyWith(USBDevice value, $Res Function(USBDevice) then) =
      _$USBDeviceCopyWithImpl<$Res>;
  $Res call(
      {String revision,
      String speed,
      String chipID,
      String? hub,
      String info,
      int? ports,
      String classID,
      String? type,
      String? serial,
      String? driver,
      String? interfaces,
      String? power,
      String? name});
}

/// @nodoc
class _$USBDeviceCopyWithImpl<$Res> implements $USBDeviceCopyWith<$Res> {
  _$USBDeviceCopyWithImpl(this._value, this._then);

  final USBDevice _value;
  // ignore: unused_field
  final $Res Function(USBDevice) _then;

  @override
  $Res call({
    Object? revision = freezed,
    Object? speed = freezed,
    Object? chipID = freezed,
    Object? hub = freezed,
    Object? info = freezed,
    Object? ports = freezed,
    Object? classID = freezed,
    Object? type = freezed,
    Object? serial = freezed,
    Object? driver = freezed,
    Object? interfaces = freezed,
    Object? power = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as String,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String,
      chipID: chipID == freezed
          ? _value.chipID
          : chipID // ignore: cast_nullable_to_non_nullable
              as String,
      hub: hub == freezed
          ? _value.hub
          : hub // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      ports: ports == freezed
          ? _value.ports
          : ports // ignore: cast_nullable_to_non_nullable
              as int?,
      classID: classID == freezed
          ? _value.classID
          : classID // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String?,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
      interfaces: interfaces == freezed
          ? _value.interfaces
          : interfaces // ignore: cast_nullable_to_non_nullable
              as String?,
      power: power == freezed
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_USBDeviceCopyWith<$Res> implements $USBDeviceCopyWith<$Res> {
  factory _$$_USBDeviceCopyWith(
          _$_USBDevice value, $Res Function(_$_USBDevice) then) =
      __$$_USBDeviceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String revision,
      String speed,
      String chipID,
      String? hub,
      String info,
      int? ports,
      String classID,
      String? type,
      String? serial,
      String? driver,
      String? interfaces,
      String? power,
      String? name});
}

/// @nodoc
class __$$_USBDeviceCopyWithImpl<$Res> extends _$USBDeviceCopyWithImpl<$Res>
    implements _$$_USBDeviceCopyWith<$Res> {
  __$$_USBDeviceCopyWithImpl(
      _$_USBDevice _value, $Res Function(_$_USBDevice) _then)
      : super(_value, (v) => _then(v as _$_USBDevice));

  @override
  _$_USBDevice get _value => super._value as _$_USBDevice;

  @override
  $Res call({
    Object? revision = freezed,
    Object? speed = freezed,
    Object? chipID = freezed,
    Object? hub = freezed,
    Object? info = freezed,
    Object? ports = freezed,
    Object? classID = freezed,
    Object? type = freezed,
    Object? serial = freezed,
    Object? driver = freezed,
    Object? interfaces = freezed,
    Object? power = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_USBDevice(
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as String,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String,
      chipID: chipID == freezed
          ? _value.chipID
          : chipID // ignore: cast_nullable_to_non_nullable
              as String,
      hub: hub == freezed
          ? _value.hub
          : hub // ignore: cast_nullable_to_non_nullable
              as String?,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String,
      ports: ports == freezed
          ? _value.ports
          : ports // ignore: cast_nullable_to_non_nullable
              as int?,
      classID: classID == freezed
          ? _value.classID
          : classID // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String?,
      driver: driver == freezed
          ? _value.driver
          : driver // ignore: cast_nullable_to_non_nullable
              as String?,
      interfaces: interfaces == freezed
          ? _value.interfaces
          : interfaces // ignore: cast_nullable_to_non_nullable
              as String?,
      power: power == freezed
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_USBDevice extends _USBDevice {
  _$_USBDevice(
      {required this.revision,
      required this.speed,
      required this.chipID,
      this.hub,
      required this.info,
      this.ports,
      required this.classID,
      this.type,
      this.serial,
      this.driver,
      this.interfaces,
      this.power,
      this.name})
      : super._();

  factory _$_USBDevice.fromJson(Map<String, dynamic> json) =>
      _$$_USBDeviceFromJson(json);

  @override
  final String revision;
  @override
  final String speed;
  @override
  final String chipID;
  @override
  final String? hub;
  @override
  final String info;
  @override
  final int? ports;
  @override
  final String classID;
  @override
  final String? type;
  @override
  final String? serial;
  @override
  final String? driver;
  @override
  final String? interfaces;
  @override
  final String? power;
  @override
  final String? name;

  @override
  String toString() {
    return 'USBDevice(revision: $revision, speed: $speed, chipID: $chipID, hub: $hub, info: $info, ports: $ports, classID: $classID, type: $type, serial: $serial, driver: $driver, interfaces: $interfaces, power: $power, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_USBDevice &&
            const DeepCollectionEquality().equals(other.revision, revision) &&
            const DeepCollectionEquality().equals(other.speed, speed) &&
            const DeepCollectionEquality().equals(other.chipID, chipID) &&
            const DeepCollectionEquality().equals(other.hub, hub) &&
            const DeepCollectionEquality().equals(other.info, info) &&
            const DeepCollectionEquality().equals(other.ports, ports) &&
            const DeepCollectionEquality().equals(other.classID, classID) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.serial, serial) &&
            const DeepCollectionEquality().equals(other.driver, driver) &&
            const DeepCollectionEquality()
                .equals(other.interfaces, interfaces) &&
            const DeepCollectionEquality().equals(other.power, power) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(revision),
      const DeepCollectionEquality().hash(speed),
      const DeepCollectionEquality().hash(chipID),
      const DeepCollectionEquality().hash(hub),
      const DeepCollectionEquality().hash(info),
      const DeepCollectionEquality().hash(ports),
      const DeepCollectionEquality().hash(classID),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(serial),
      const DeepCollectionEquality().hash(driver),
      const DeepCollectionEquality().hash(interfaces),
      const DeepCollectionEquality().hash(power),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_USBDeviceCopyWith<_$_USBDevice> get copyWith =>
      __$$_USBDeviceCopyWithImpl<_$_USBDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_USBDeviceToJson(
      this,
    );
  }
}

abstract class _USBDevice extends USBDevice {
  factory _USBDevice(
      {required final String revision,
      required final String speed,
      required final String chipID,
      final String? hub,
      required final String info,
      final int? ports,
      required final String classID,
      final String? type,
      final String? serial,
      final String? driver,
      final String? interfaces,
      final String? power,
      final String? name}) = _$_USBDevice;
  _USBDevice._() : super._();

  factory _USBDevice.fromJson(Map<String, dynamic> json) =
      _$_USBDevice.fromJson;

  @override
  String get revision;
  @override
  String get speed;
  @override
  String get chipID;
  @override
  String? get hub;
  @override
  String get info;
  @override
  int? get ports;
  @override
  String get classID;
  @override
  String? get type;
  @override
  String? get serial;
  @override
  String? get driver;
  @override
  String? get interfaces;
  @override
  String? get power;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_USBDeviceCopyWith<_$_USBDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
