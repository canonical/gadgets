// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'screen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Screen _$ScreenFromJson(Map<String, dynamic> json) {
  return _Screen.fromJson(json);
}

/// @nodoc
mixin _$Screen {
  double get dpi => throw _privateConstructorUsedError;
  int get screen => throw _privateConstructorUsedError;
  String get resolution => throw _privateConstructorUsedError;
  String get diagonal => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScreenCopyWith<Screen> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenCopyWith<$Res> {
  factory $ScreenCopyWith(Screen value, $Res Function(Screen) then) =
      _$ScreenCopyWithImpl<$Res>;
  $Res call(
      {double dpi,
      int screen,
      String resolution,
      String diagonal,
      String size});
}

/// @nodoc
class _$ScreenCopyWithImpl<$Res> implements $ScreenCopyWith<$Res> {
  _$ScreenCopyWithImpl(this._value, this._then);

  final Screen _value;
  // ignore: unused_field
  final $Res Function(Screen) _then;

  @override
  $Res call({
    Object? dpi = freezed,
    Object? screen = freezed,
    Object? resolution = freezed,
    Object? diagonal = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      dpi: dpi == freezed
          ? _value.dpi
          : dpi // ignore: cast_nullable_to_non_nullable
              as double,
      screen: screen == freezed
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as int,
      resolution: resolution == freezed
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      diagonal: diagonal == freezed
          ? _value.diagonal
          : diagonal // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ScreenCopyWith<$Res> implements $ScreenCopyWith<$Res> {
  factory _$$_ScreenCopyWith(_$_Screen value, $Res Function(_$_Screen) then) =
      __$$_ScreenCopyWithImpl<$Res>;
  @override
  $Res call(
      {double dpi,
      int screen,
      String resolution,
      String diagonal,
      String size});
}

/// @nodoc
class __$$_ScreenCopyWithImpl<$Res> extends _$ScreenCopyWithImpl<$Res>
    implements _$$_ScreenCopyWith<$Res> {
  __$$_ScreenCopyWithImpl(_$_Screen _value, $Res Function(_$_Screen) _then)
      : super(_value, (v) => _then(v as _$_Screen));

  @override
  _$_Screen get _value => super._value as _$_Screen;

  @override
  $Res call({
    Object? dpi = freezed,
    Object? screen = freezed,
    Object? resolution = freezed,
    Object? diagonal = freezed,
    Object? size = freezed,
  }) {
    return _then(_$_Screen(
      dpi: dpi == freezed
          ? _value.dpi
          : dpi // ignore: cast_nullable_to_non_nullable
              as double,
      screen: screen == freezed
          ? _value.screen
          : screen // ignore: cast_nullable_to_non_nullable
              as int,
      resolution: resolution == freezed
          ? _value.resolution
          : resolution // ignore: cast_nullable_to_non_nullable
              as String,
      diagonal: diagonal == freezed
          ? _value.diagonal
          : diagonal // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Screen extends _Screen {
  _$_Screen(
      {required this.dpi,
      required this.screen,
      required this.resolution,
      required this.diagonal,
      required this.size})
      : super._();

  factory _$_Screen.fromJson(Map<String, dynamic> json) =>
      _$$_ScreenFromJson(json);

  @override
  final double dpi;
  @override
  final int screen;
  @override
  final String resolution;
  @override
  final String diagonal;
  @override
  final String size;

  @override
  String toString() {
    return 'Screen(dpi: $dpi, screen: $screen, resolution: $resolution, diagonal: $diagonal, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Screen &&
            const DeepCollectionEquality().equals(other.dpi, dpi) &&
            const DeepCollectionEquality().equals(other.screen, screen) &&
            const DeepCollectionEquality()
                .equals(other.resolution, resolution) &&
            const DeepCollectionEquality().equals(other.diagonal, diagonal) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dpi),
      const DeepCollectionEquality().hash(screen),
      const DeepCollectionEquality().hash(resolution),
      const DeepCollectionEquality().hash(diagonal),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$$_ScreenCopyWith<_$_Screen> get copyWith =>
      __$$_ScreenCopyWithImpl<_$_Screen>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScreenToJson(
      this,
    );
  }
}

abstract class _Screen extends Screen {
  factory _Screen(
      {required final double dpi,
      required final int screen,
      required final String resolution,
      required final String diagonal,
      required final String size}) = _$_Screen;
  _Screen._() : super._();

  factory _Screen.fromJson(Map<String, dynamic> json) = _$_Screen.fromJson;

  @override
  double get dpi;
  @override
  int get screen;
  @override
  String get resolution;
  @override
  String get diagonal;
  @override
  String get size;
  @override
  @JsonKey(ignore: true)
  _$$_ScreenCopyWith<_$_Screen> get copyWith =>
      throw _privateConstructorUsedError;
}
