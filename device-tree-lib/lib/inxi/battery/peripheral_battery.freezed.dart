// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'peripheral_battery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PeripheralBattery _$PeripheralBatteryFromJson(Map<String, dynamic> json) {
  return _PeripheralBattery.fromJson(json);
}

/// @nodoc
mixin _$PeripheralBattery {
  String get status => throw _privateConstructorUsedError;
  String get serial => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get charge => throw _privateConstructorUsedError;
  String get rechargeable => throw _privateConstructorUsedError;
  String get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeripheralBatteryCopyWith<PeripheralBattery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeripheralBatteryCopyWith<$Res> {
  factory $PeripheralBatteryCopyWith(
          PeripheralBattery value, $Res Function(PeripheralBattery) then) =
      _$PeripheralBatteryCopyWithImpl<$Res>;
  $Res call(
      {String status,
      String serial,
      String model,
      String charge,
      String rechargeable,
      String device});
}

/// @nodoc
class _$PeripheralBatteryCopyWithImpl<$Res>
    implements $PeripheralBatteryCopyWith<$Res> {
  _$PeripheralBatteryCopyWithImpl(this._value, this._then);

  final PeripheralBattery _value;
  // ignore: unused_field
  final $Res Function(PeripheralBattery) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? serial = freezed,
    Object? model = freezed,
    Object? charge = freezed,
    Object? rechargeable = freezed,
    Object? device = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      charge: charge == freezed
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as String,
      rechargeable: rechargeable == freezed
          ? _value.rechargeable
          : rechargeable // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PeripheralBatteryCopyWith<$Res>
    implements $PeripheralBatteryCopyWith<$Res> {
  factory _$$_PeripheralBatteryCopyWith(_$_PeripheralBattery value,
          $Res Function(_$_PeripheralBattery) then) =
      __$$_PeripheralBatteryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String status,
      String serial,
      String model,
      String charge,
      String rechargeable,
      String device});
}

/// @nodoc
class __$$_PeripheralBatteryCopyWithImpl<$Res>
    extends _$PeripheralBatteryCopyWithImpl<$Res>
    implements _$$_PeripheralBatteryCopyWith<$Res> {
  __$$_PeripheralBatteryCopyWithImpl(
      _$_PeripheralBattery _value, $Res Function(_$_PeripheralBattery) _then)
      : super(_value, (v) => _then(v as _$_PeripheralBattery));

  @override
  _$_PeripheralBattery get _value => super._value as _$_PeripheralBattery;

  @override
  $Res call({
    Object? status = freezed,
    Object? serial = freezed,
    Object? model = freezed,
    Object? charge = freezed,
    Object? rechargeable = freezed,
    Object? device = freezed,
  }) {
    return _then(_$_PeripheralBattery(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      charge: charge == freezed
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as String,
      rechargeable: rechargeable == freezed
          ? _value.rechargeable
          : rechargeable // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PeripheralBattery extends _PeripheralBattery {
  _$_PeripheralBattery(
      {required this.status,
      required this.serial,
      required this.model,
      required this.charge,
      required this.rechargeable,
      required this.device})
      : super._();

  factory _$_PeripheralBattery.fromJson(Map<String, dynamic> json) =>
      _$$_PeripheralBatteryFromJson(json);

  @override
  final String status;
  @override
  final String serial;
  @override
  final String model;
  @override
  final String charge;
  @override
  final String rechargeable;
  @override
  final String device;

  @override
  String toString() {
    return 'PeripheralBattery(status: $status, serial: $serial, model: $model, charge: $charge, rechargeable: $rechargeable, device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PeripheralBattery &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.serial, serial) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.charge, charge) &&
            const DeepCollectionEquality()
                .equals(other.rechargeable, rechargeable) &&
            const DeepCollectionEquality().equals(other.device, device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(serial),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(charge),
      const DeepCollectionEquality().hash(rechargeable),
      const DeepCollectionEquality().hash(device));

  @JsonKey(ignore: true)
  @override
  _$$_PeripheralBatteryCopyWith<_$_PeripheralBattery> get copyWith =>
      __$$_PeripheralBatteryCopyWithImpl<_$_PeripheralBattery>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeripheralBatteryToJson(
      this,
    );
  }
}

abstract class _PeripheralBattery extends PeripheralBattery {
  factory _PeripheralBattery(
      {required final String status,
      required final String serial,
      required final String model,
      required final String charge,
      required final String rechargeable,
      required final String device}) = _$_PeripheralBattery;
  _PeripheralBattery._() : super._();

  factory _PeripheralBattery.fromJson(Map<String, dynamic> json) =
      _$_PeripheralBattery.fromJson;

  @override
  String get status;
  @override
  String get serial;
  @override
  String get model;
  @override
  String get charge;
  @override
  String get rechargeable;
  @override
  String get device;
  @override
  @JsonKey(ignore: true)
  _$$_PeripheralBatteryCopyWith<_$_PeripheralBattery> get copyWith =>
      throw _privateConstructorUsedError;
}
