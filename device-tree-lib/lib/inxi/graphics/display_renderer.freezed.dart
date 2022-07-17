// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'display_renderer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DisplayRenderer _$DisplayRendererFromJson(Map<String, dynamic> json) {
  return _DisplayRenderer.fromJson(json);
}

/// @nodoc
mixin _$DisplayRenderer {
  bool get directRender => throw _privateConstructorUsedError;
  String get renderer => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get openGL => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisplayRendererCopyWith<DisplayRenderer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayRendererCopyWith<$Res> {
  factory $DisplayRendererCopyWith(
          DisplayRenderer value, $Res Function(DisplayRenderer) then) =
      _$DisplayRendererCopyWithImpl<$Res>;
  $Res call(
      {bool directRender, String renderer, String version, String openGL});
}

/// @nodoc
class _$DisplayRendererCopyWithImpl<$Res>
    implements $DisplayRendererCopyWith<$Res> {
  _$DisplayRendererCopyWithImpl(this._value, this._then);

  final DisplayRenderer _value;
  // ignore: unused_field
  final $Res Function(DisplayRenderer) _then;

  @override
  $Res call({
    Object? directRender = freezed,
    Object? renderer = freezed,
    Object? version = freezed,
    Object? openGL = freezed,
  }) {
    return _then(_value.copyWith(
      directRender: directRender == freezed
          ? _value.directRender
          : directRender // ignore: cast_nullable_to_non_nullable
              as bool,
      renderer: renderer == freezed
          ? _value.renderer
          : renderer // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      openGL: openGL == freezed
          ? _value.openGL
          : openGL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DisplayRendererCopyWith<$Res>
    implements $DisplayRendererCopyWith<$Res> {
  factory _$$_DisplayRendererCopyWith(
          _$_DisplayRenderer value, $Res Function(_$_DisplayRenderer) then) =
      __$$_DisplayRendererCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool directRender, String renderer, String version, String openGL});
}

/// @nodoc
class __$$_DisplayRendererCopyWithImpl<$Res>
    extends _$DisplayRendererCopyWithImpl<$Res>
    implements _$$_DisplayRendererCopyWith<$Res> {
  __$$_DisplayRendererCopyWithImpl(
      _$_DisplayRenderer _value, $Res Function(_$_DisplayRenderer) _then)
      : super(_value, (v) => _then(v as _$_DisplayRenderer));

  @override
  _$_DisplayRenderer get _value => super._value as _$_DisplayRenderer;

  @override
  $Res call({
    Object? directRender = freezed,
    Object? renderer = freezed,
    Object? version = freezed,
    Object? openGL = freezed,
  }) {
    return _then(_$_DisplayRenderer(
      directRender: directRender == freezed
          ? _value.directRender
          : directRender // ignore: cast_nullable_to_non_nullable
              as bool,
      renderer: renderer == freezed
          ? _value.renderer
          : renderer // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      openGL: openGL == freezed
          ? _value.openGL
          : openGL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DisplayRenderer extends _DisplayRenderer {
  _$_DisplayRenderer(
      {required this.directRender,
      required this.renderer,
      required this.version,
      required this.openGL})
      : super._();

  factory _$_DisplayRenderer.fromJson(Map<String, dynamic> json) =>
      _$$_DisplayRendererFromJson(json);

  @override
  final bool directRender;
  @override
  final String renderer;
  @override
  final String version;
  @override
  final String openGL;

  @override
  String toString() {
    return 'DisplayRenderer(directRender: $directRender, renderer: $renderer, version: $version, openGL: $openGL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DisplayRenderer &&
            const DeepCollectionEquality()
                .equals(other.directRender, directRender) &&
            const DeepCollectionEquality().equals(other.renderer, renderer) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.openGL, openGL));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(directRender),
      const DeepCollectionEquality().hash(renderer),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(openGL));

  @JsonKey(ignore: true)
  @override
  _$$_DisplayRendererCopyWith<_$_DisplayRenderer> get copyWith =>
      __$$_DisplayRendererCopyWithImpl<_$_DisplayRenderer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DisplayRendererToJson(
      this,
    );
  }
}

abstract class _DisplayRenderer extends DisplayRenderer {
  factory _DisplayRenderer(
      {required final bool directRender,
      required final String renderer,
      required final String version,
      required final String openGL}) = _$_DisplayRenderer;
  _DisplayRenderer._() : super._();

  factory _DisplayRenderer.fromJson(Map<String, dynamic> json) =
      _$_DisplayRenderer.fromJson;

  @override
  bool get directRender;
  @override
  String get renderer;
  @override
  String get version;
  @override
  String get openGL;
  @override
  @JsonKey(ignore: true)
  _$$_DisplayRendererCopyWith<_$_DisplayRenderer> get copyWith =>
      throw _privateConstructorUsedError;
}
