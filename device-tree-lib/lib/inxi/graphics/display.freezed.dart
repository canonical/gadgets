// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'display.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Display _$DisplayFromJson(Map<String, dynamic> json) {
  return _Display.fromJson(json);
}

/// @nodoc
mixin _$Display {
  String get resolution => throw _privateConstructorUsedError;
  double? get dpi => throw _privateConstructorUsedError;
  String get monitor => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  int get hz => throw _privateConstructorUsedError;
  String? get diagonal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisplayCopyWith<Display> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayCopyWith<$Res> {
  factory $DisplayCopyWith(Display value, $Res Function(Display) then) =
      _$DisplayCopyWithImpl<$Res>;
  $Res call(
      {String resolution,
      double? dpi,
      String monitor,
      String size,
      int hz,
      String? diagonal});
}

/// @nodoc
class _$DisplayCopyWithImpl<$Res> implements $DisplayCopyWith<$Res> {
  _$DisplayCopyWithImpl(this._value, this._then);

  final Display _value;
  // ignore: unused_field
  final $Res Function(Display) _then;

  @override
  $Res call({
    Object? resolution = freezed,
    Object? dpi = freezed,
    Object? monitor = freezed,
    Object? size = freezed,
    Object? hz = freezed,
    Object? diagonal = freezed,
  }) {
    return _then(_value.copyWith(
      resolution: resolution == freezed
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      dpi: dpi == freezed
          ? _value.dpi
          : dpi // ignore: cast_nullable_to_non_nullable
              as double?,
      monitor: monitor == freezed
          ? _value.monitor
          : monitor // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      hz: hz == freezed
          ? _value.hz
          : hz // ignore: cast_nullable_to_non_nullable
              as int,
      diagonal: diagonal == freezed
          ? _value.diagonal
          : diagonal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DisplayCopyWith<$Res> implements $DisplayCopyWith<$Res> {
  factory _$$_DisplayCopyWith(
          _$_Display value, $Res Function(_$_Display) then) =
      __$$_DisplayCopyWithImpl<$Res>;
  @override
  $Res call(
      {String resolution,
      double? dpi,
      String monitor,
      String size,
      int hz,
      String? diagonal});
}

/// @nodoc
class __$$_DisplayCopyWithImpl<$Res> extends _$DisplayCopyWithImpl<$Res>
    implements _$$_DisplayCopyWith<$Res> {
  __$$_DisplayCopyWithImpl(_$_Display _value, $Res Function(_$_Display) _then)
      : super(_value, (v) => _then(v as _$_Display));

  @override
  _$_Display get _value => super._value as _$_Display;

  @override
  $Res call({
    Object? resolution = freezed,
    Object? dpi = freezed,
    Object? monitor = freezed,
    Object? size = freezed,
    Object? hz = freezed,
    Object? diagonal = freezed,
  }) {
    return _then(_$_Display(
      resolution: resolution == freezed
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      dpi: dpi == freezed
          ? _value.dpi
          : dpi // ignore: cast_nullable_to_non_nullable
              as double?,
      monitor: monitor == freezed
          ? _value.monitor
          : monitor // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      hz: hz == freezed
          ? _value.hz
          : hz // ignore: cast_nullable_to_non_nullable
              as int,
      diagonal: diagonal == freezed
          ? _value.diagonal
          : diagonal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Display extends _Display {
  _$_Display(
      {required this.resolution,
      this.dpi,
      required this.monitor,
      required this.size,
      required this.hz,
      required this.diagonal})
      : super._();

  factory _$_Display.fromJson(Map<String, dynamic> json) =>
      _$$_DisplayFromJson(json);

  @override
  final String resolution;
  @override
  final double? dpi;
  @override
  final String monitor;
  @override
  final String size;
  @override
  final int hz;
  @override
  final String? diagonal;

  @override
  String toString() {
    return 'Display(resolution: $resolution, dpi: $dpi, monitor: $monitor, size: $size, hz: $hz, diagonal: $diagonal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Display &&
            const DeepCollectionEquality()
                .equals(other.resolution, resolution) &&
            const DeepCollectionEquality().equals(other.dpi, dpi) &&
            const DeepCollectionEquality().equals(other.monitor, monitor) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.hz, hz) &&
            const DeepCollectionEquality().equals(other.diagonal, diagonal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(resolution),
      const DeepCollectionEquality().hash(dpi),
      const DeepCollectionEquality().hash(monitor),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(hz),
      const DeepCollectionEquality().hash(diagonal));

  @JsonKey(ignore: true)
  @override
  _$$_DisplayCopyWith<_$_Display> get copyWith =>
      __$$_DisplayCopyWithImpl<_$_Display>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DisplayToJson(
      this,
    );
  }
}

abstract class _Display extends Display {
  factory _Display(
      {required final String resolution,
      final double? dpi,
      required final String monitor,
      required final String size,
      required final int hz,
      required final String? diagonal}) = _$_Display;
  _Display._() : super._();

  factory _Display.fromJson(Map<String, dynamic> json) = _$_Display.fromJson;

  @override
  String get resolution;
  @override
  double? get dpi;
  @override
  String get monitor;
  @override
  String get size;
  @override
  int get hz;
  @override
  String? get diagonal;
  @override
  @JsonKey(ignore: true)
  _$$_DisplayCopyWith<_$_Display> get copyWith =>
      throw _privateConstructorUsedError;
}
