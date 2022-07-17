// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pci_audio_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PCIAudioDevice _$PCIAudioDeviceFromJson(Map<String, dynamic> json) {
  return _PCIAudioDevice.fromJson(json);
}

/// @nodoc
mixin _$PCIAudioDevice {
  String get name => throw _privateConstructorUsedError;
  String get driver => throw _privateConstructorUsedError;
  String get classID => throw _privateConstructorUsedError;
  int get lanes => throw _privateConstructorUsedError;
  int get gen => throw _privateConstructorUsedError;
  String get pcie => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PCIAudioDeviceCopyWith<PCIAudioDevice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PCIAudioDeviceCopyWith<$Res> {
  factory $PCIAudioDeviceCopyWith(
          PCIAudioDevice value, $Res Function(PCIAudioDevice) then) =
      _$PCIAudioDeviceCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String driver,
      String classID,
      int lanes,
      int gen,
      String pcie});
}

/// @nodoc
class _$PCIAudioDeviceCopyWithImpl<$Res>
    implements $PCIAudioDeviceCopyWith<$Res> {
  _$PCIAudioDeviceCopyWithImpl(this._value, this._then);

  final PCIAudioDevice _value;
  // ignore: unused_field
  final $Res Function(PCIAudioDevice) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? driver = freezed,
    Object? classID = freezed,
    Object? lanes = freezed,
    Object? gen = freezed,
    Object? pcie = freezed,
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
      lanes: lanes == freezed
          ? _value.lanes
          : lanes // ignore: cast_nullable_to_non_nullable
              as int,
      gen: gen == freezed
          ? _value.gen
          : gen // ignore: cast_nullable_to_non_nullable
              as int,
      pcie: pcie == freezed
          ? _value.pcie
          : pcie // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PCIAudioDeviceCopyWith<$Res>
    implements $PCIAudioDeviceCopyWith<$Res> {
  factory _$$_PCIAudioDeviceCopyWith(
          _$_PCIAudioDevice value, $Res Function(_$_PCIAudioDevice) then) =
      __$$_PCIAudioDeviceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String driver,
      String classID,
      int lanes,
      int gen,
      String pcie});
}

/// @nodoc
class __$$_PCIAudioDeviceCopyWithImpl<$Res>
    extends _$PCIAudioDeviceCopyWithImpl<$Res>
    implements _$$_PCIAudioDeviceCopyWith<$Res> {
  __$$_PCIAudioDeviceCopyWithImpl(
      _$_PCIAudioDevice _value, $Res Function(_$_PCIAudioDevice) _then)
      : super(_value, (v) => _then(v as _$_PCIAudioDevice));

  @override
  _$_PCIAudioDevice get _value => super._value as _$_PCIAudioDevice;

  @override
  $Res call({
    Object? name = freezed,
    Object? driver = freezed,
    Object? classID = freezed,
    Object? lanes = freezed,
    Object? gen = freezed,
    Object? pcie = freezed,
  }) {
    return _then(_$_PCIAudioDevice(
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
      lanes: lanes == freezed
          ? _value.lanes
          : lanes // ignore: cast_nullable_to_non_nullable
              as int,
      gen: gen == freezed
          ? _value.gen
          : gen // ignore: cast_nullable_to_non_nullable
              as int,
      pcie: pcie == freezed
          ? _value.pcie
          : pcie // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PCIAudioDevice extends _PCIAudioDevice {
  _$_PCIAudioDevice(
      {required this.name,
      required this.driver,
      required this.classID,
      required this.lanes,
      required this.gen,
      required this.pcie})
      : super._();

  factory _$_PCIAudioDevice.fromJson(Map<String, dynamic> json) =>
      _$$_PCIAudioDeviceFromJson(json);

  @override
  final String name;
  @override
  final String driver;
  @override
  final String classID;
  @override
  final int lanes;
  @override
  final int gen;
  @override
  final String pcie;

  @override
  String toString() {
    return 'PCIAudioDevice(name: $name, driver: $driver, classID: $classID, lanes: $lanes, gen: $gen, pcie: $pcie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PCIAudioDevice &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.driver, driver) &&
            const DeepCollectionEquality().equals(other.classID, classID) &&
            const DeepCollectionEquality().equals(other.lanes, lanes) &&
            const DeepCollectionEquality().equals(other.gen, gen) &&
            const DeepCollectionEquality().equals(other.pcie, pcie));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(driver),
      const DeepCollectionEquality().hash(classID),
      const DeepCollectionEquality().hash(lanes),
      const DeepCollectionEquality().hash(gen),
      const DeepCollectionEquality().hash(pcie));

  @JsonKey(ignore: true)
  @override
  _$$_PCIAudioDeviceCopyWith<_$_PCIAudioDevice> get copyWith =>
      __$$_PCIAudioDeviceCopyWithImpl<_$_PCIAudioDevice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PCIAudioDeviceToJson(
      this,
    );
  }
}

abstract class _PCIAudioDevice extends PCIAudioDevice {
  factory _PCIAudioDevice(
      {required final String name,
      required final String driver,
      required final String classID,
      required final int lanes,
      required final int gen,
      required final String pcie}) = _$_PCIAudioDevice;
  _PCIAudioDevice._() : super._();

  factory _PCIAudioDevice.fromJson(Map<String, dynamic> json) =
      _$_PCIAudioDevice.fromJson;

  @override
  String get name;
  @override
  String get driver;
  @override
  String get classID;
  @override
  int get lanes;
  @override
  int get gen;
  @override
  String get pcie;
  @override
  @JsonKey(ignore: true)
  _$$_PCIAudioDeviceCopyWith<_$_PCIAudioDevice> get copyWith =>
      throw _privateConstructorUsedError;
}
