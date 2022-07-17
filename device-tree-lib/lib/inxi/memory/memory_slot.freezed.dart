// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'memory_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmptyMemorySlot _$EmptyMemorySlotFromJson(Map<String, dynamic> json) {
  return _EmptyMemorySlot.fromJson(json);
}

/// @nodoc
mixin _$EmptyMemorySlot {
  String get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyMemorySlotCopyWith<EmptyMemorySlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyMemorySlotCopyWith<$Res> {
  factory $EmptyMemorySlotCopyWith(
          EmptyMemorySlot value, $Res Function(EmptyMemorySlot) then) =
      _$EmptyMemorySlotCopyWithImpl<$Res>;
  $Res call({String device});
}

/// @nodoc
class _$EmptyMemorySlotCopyWithImpl<$Res>
    implements $EmptyMemorySlotCopyWith<$Res> {
  _$EmptyMemorySlotCopyWithImpl(this._value, this._then);

  final EmptyMemorySlot _value;
  // ignore: unused_field
  final $Res Function(EmptyMemorySlot) _then;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(_value.copyWith(
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EmptyMemorySlotCopyWith<$Res>
    implements $EmptyMemorySlotCopyWith<$Res> {
  factory _$$_EmptyMemorySlotCopyWith(
          _$_EmptyMemorySlot value, $Res Function(_$_EmptyMemorySlot) then) =
      __$$_EmptyMemorySlotCopyWithImpl<$Res>;
  @override
  $Res call({String device});
}

/// @nodoc
class __$$_EmptyMemorySlotCopyWithImpl<$Res>
    extends _$EmptyMemorySlotCopyWithImpl<$Res>
    implements _$$_EmptyMemorySlotCopyWith<$Res> {
  __$$_EmptyMemorySlotCopyWithImpl(
      _$_EmptyMemorySlot _value, $Res Function(_$_EmptyMemorySlot) _then)
      : super(_value, (v) => _then(v as _$_EmptyMemorySlot));

  @override
  _$_EmptyMemorySlot get _value => super._value as _$_EmptyMemorySlot;

  @override
  $Res call({
    Object? device = freezed,
  }) {
    return _then(_$_EmptyMemorySlot(
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmptyMemorySlot extends _EmptyMemorySlot {
  _$_EmptyMemorySlot({required this.device}) : super._();

  factory _$_EmptyMemorySlot.fromJson(Map<String, dynamic> json) =>
      _$$_EmptyMemorySlotFromJson(json);

  @override
  final String device;

  @override
  String toString() {
    return 'EmptyMemorySlot(device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmptyMemorySlot &&
            const DeepCollectionEquality().equals(other.device, device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(device));

  @JsonKey(ignore: true)
  @override
  _$$_EmptyMemorySlotCopyWith<_$_EmptyMemorySlot> get copyWith =>
      __$$_EmptyMemorySlotCopyWithImpl<_$_EmptyMemorySlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmptyMemorySlotToJson(
      this,
    );
  }
}

abstract class _EmptyMemorySlot extends EmptyMemorySlot {
  factory _EmptyMemorySlot({required final String device}) = _$_EmptyMemorySlot;
  _EmptyMemorySlot._() : super._();

  factory _EmptyMemorySlot.fromJson(Map<String, dynamic> json) =
      _$_EmptyMemorySlot.fromJson;

  @override
  String get device;
  @override
  @JsonKey(ignore: true)
  _$$_EmptyMemorySlotCopyWith<_$_EmptyMemorySlot> get copyWith =>
      throw _privateConstructorUsedError;
}

FilledMemorySlot _$FilledMemorySlotFromJson(Map<String, dynamic> json) {
  return _FilledMemorySlot.fromJson(json);
}

/// @nodoc
mixin _$FilledMemorySlot {
  String get manufacturer => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  String get speed => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  String get partNumber => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get serial => throw _privateConstructorUsedError;
  String get busWidth => throw _privateConstructorUsedError;
  String get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilledMemorySlotCopyWith<FilledMemorySlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilledMemorySlotCopyWith<$Res> {
  factory $FilledMemorySlotCopyWith(
          FilledMemorySlot value, $Res Function(FilledMemorySlot) then) =
      _$FilledMemorySlotCopyWithImpl<$Res>;
  $Res call(
      {String manufacturer,
      String detail,
      String speed,
      String type,
      String total,
      String partNumber,
      String size,
      String serial,
      String busWidth,
      String device});
}

/// @nodoc
class _$FilledMemorySlotCopyWithImpl<$Res>
    implements $FilledMemorySlotCopyWith<$Res> {
  _$FilledMemorySlotCopyWithImpl(this._value, this._then);

  final FilledMemorySlot _value;
  // ignore: unused_field
  final $Res Function(FilledMemorySlot) _then;

  @override
  $Res call({
    Object? manufacturer = freezed,
    Object? detail = freezed,
    Object? speed = freezed,
    Object? type = freezed,
    Object? total = freezed,
    Object? partNumber = freezed,
    Object? size = freezed,
    Object? serial = freezed,
    Object? busWidth = freezed,
    Object? device = freezed,
  }) {
    return _then(_value.copyWith(
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      partNumber: partNumber == freezed
          ? _value.partNumber
          : partNumber // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      busWidth: busWidth == freezed
          ? _value.busWidth
          : busWidth // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FilledMemorySlotCopyWith<$Res>
    implements $FilledMemorySlotCopyWith<$Res> {
  factory _$$_FilledMemorySlotCopyWith(
          _$_FilledMemorySlot value, $Res Function(_$_FilledMemorySlot) then) =
      __$$_FilledMemorySlotCopyWithImpl<$Res>;
  @override
  $Res call(
      {String manufacturer,
      String detail,
      String speed,
      String type,
      String total,
      String partNumber,
      String size,
      String serial,
      String busWidth,
      String device});
}

/// @nodoc
class __$$_FilledMemorySlotCopyWithImpl<$Res>
    extends _$FilledMemorySlotCopyWithImpl<$Res>
    implements _$$_FilledMemorySlotCopyWith<$Res> {
  __$$_FilledMemorySlotCopyWithImpl(
      _$_FilledMemorySlot _value, $Res Function(_$_FilledMemorySlot) _then)
      : super(_value, (v) => _then(v as _$_FilledMemorySlot));

  @override
  _$_FilledMemorySlot get _value => super._value as _$_FilledMemorySlot;

  @override
  $Res call({
    Object? manufacturer = freezed,
    Object? detail = freezed,
    Object? speed = freezed,
    Object? type = freezed,
    Object? total = freezed,
    Object? partNumber = freezed,
    Object? size = freezed,
    Object? serial = freezed,
    Object? busWidth = freezed,
    Object? device = freezed,
  }) {
    return _then(_$_FilledMemorySlot(
      manufacturer: manufacturer == freezed
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      speed: speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      partNumber: partNumber == freezed
          ? _value.partNumber
          : partNumber // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      serial: serial == freezed
          ? _value.serial
          : serial // ignore: cast_nullable_to_non_nullable
              as String,
      busWidth: busWidth == freezed
          ? _value.busWidth
          : busWidth // ignore: cast_nullable_to_non_nullable
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
class _$_FilledMemorySlot extends _FilledMemorySlot {
  _$_FilledMemorySlot(
      {required this.manufacturer,
      required this.detail,
      required this.speed,
      required this.type,
      required this.total,
      required this.partNumber,
      required this.size,
      required this.serial,
      required this.busWidth,
      required this.device})
      : super._();

  factory _$_FilledMemorySlot.fromJson(Map<String, dynamic> json) =>
      _$$_FilledMemorySlotFromJson(json);

  @override
  final String manufacturer;
  @override
  final String detail;
  @override
  final String speed;
  @override
  final String type;
  @override
  final String total;
  @override
  final String partNumber;
  @override
  final String size;
  @override
  final String serial;
  @override
  final String busWidth;
  @override
  final String device;

  @override
  String toString() {
    return 'FilledMemorySlot(manufacturer: $manufacturer, detail: $detail, speed: $speed, type: $type, total: $total, partNumber: $partNumber, size: $size, serial: $serial, busWidth: $busWidth, device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilledMemorySlot &&
            const DeepCollectionEquality()
                .equals(other.manufacturer, manufacturer) &&
            const DeepCollectionEquality().equals(other.detail, detail) &&
            const DeepCollectionEquality().equals(other.speed, speed) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality()
                .equals(other.partNumber, partNumber) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.serial, serial) &&
            const DeepCollectionEquality().equals(other.busWidth, busWidth) &&
            const DeepCollectionEquality().equals(other.device, device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(manufacturer),
      const DeepCollectionEquality().hash(detail),
      const DeepCollectionEquality().hash(speed),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(partNumber),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(serial),
      const DeepCollectionEquality().hash(busWidth),
      const DeepCollectionEquality().hash(device));

  @JsonKey(ignore: true)
  @override
  _$$_FilledMemorySlotCopyWith<_$_FilledMemorySlot> get copyWith =>
      __$$_FilledMemorySlotCopyWithImpl<_$_FilledMemorySlot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilledMemorySlotToJson(
      this,
    );
  }
}

abstract class _FilledMemorySlot extends FilledMemorySlot {
  factory _FilledMemorySlot(
      {required final String manufacturer,
      required final String detail,
      required final String speed,
      required final String type,
      required final String total,
      required final String partNumber,
      required final String size,
      required final String serial,
      required final String busWidth,
      required final String device}) = _$_FilledMemorySlot;
  _FilledMemorySlot._() : super._();

  factory _FilledMemorySlot.fromJson(Map<String, dynamic> json) =
      _$_FilledMemorySlot.fromJson;

  @override
  String get manufacturer;
  @override
  String get detail;
  @override
  String get speed;
  @override
  String get type;
  @override
  String get total;
  @override
  String get partNumber;
  @override
  String get size;
  @override
  String get serial;
  @override
  String get busWidth;
  @override
  String get device;
  @override
  @JsonKey(ignore: true)
  _$$_FilledMemorySlotCopyWith<_$_FilledMemorySlot> get copyWith =>
      throw _privateConstructorUsedError;
}
