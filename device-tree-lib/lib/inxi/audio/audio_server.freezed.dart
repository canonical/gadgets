// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'audio_server.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AudioServer _$AudioServerFromJson(Map<String, dynamic> json) {
  return _AudioServer.fromJson(json);
}

/// @nodoc
mixin _$AudioServer {
  String get name => throw _privateConstructorUsedError;
  bool get running => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioServerCopyWith<AudioServer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioServerCopyWith<$Res> {
  factory $AudioServerCopyWith(
          AudioServer value, $Res Function(AudioServer) then) =
      _$AudioServerCopyWithImpl<$Res>;
  $Res call({String name, bool running, String version});
}

/// @nodoc
class _$AudioServerCopyWithImpl<$Res> implements $AudioServerCopyWith<$Res> {
  _$AudioServerCopyWithImpl(this._value, this._then);

  final AudioServer _value;
  // ignore: unused_field
  final $Res Function(AudioServer) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? running = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      running: running == freezed
          ? _value.running
          : running // ignore: cast_nullable_to_non_nullable
              as bool,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AudioServerCopyWith<$Res>
    implements $AudioServerCopyWith<$Res> {
  factory _$$_AudioServerCopyWith(
          _$_AudioServer value, $Res Function(_$_AudioServer) then) =
      __$$_AudioServerCopyWithImpl<$Res>;
  @override
  $Res call({String name, bool running, String version});
}

/// @nodoc
class __$$_AudioServerCopyWithImpl<$Res> extends _$AudioServerCopyWithImpl<$Res>
    implements _$$_AudioServerCopyWith<$Res> {
  __$$_AudioServerCopyWithImpl(
      _$_AudioServer _value, $Res Function(_$_AudioServer) _then)
      : super(_value, (v) => _then(v as _$_AudioServer));

  @override
  _$_AudioServer get _value => super._value as _$_AudioServer;

  @override
  $Res call({
    Object? name = freezed,
    Object? running = freezed,
    Object? version = freezed,
  }) {
    return _then(_$_AudioServer(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      running: running == freezed
          ? _value.running
          : running // ignore: cast_nullable_to_non_nullable
              as bool,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AudioServer extends _AudioServer {
  _$_AudioServer(
      {required this.name, required this.running, required this.version})
      : super._();

  factory _$_AudioServer.fromJson(Map<String, dynamic> json) =>
      _$$_AudioServerFromJson(json);

  @override
  final String name;
  @override
  final bool running;
  @override
  final String version;

  @override
  String toString() {
    return 'AudioServer(name: $name, running: $running, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioServer &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.running, running) &&
            const DeepCollectionEquality().equals(other.version, version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(running),
      const DeepCollectionEquality().hash(version));

  @JsonKey(ignore: true)
  @override
  _$$_AudioServerCopyWith<_$_AudioServer> get copyWith =>
      __$$_AudioServerCopyWithImpl<_$_AudioServer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AudioServerToJson(
      this,
    );
  }
}

abstract class _AudioServer extends AudioServer {
  factory _AudioServer(
      {required final String name,
      required final bool running,
      required final String version}) = _$_AudioServer;
  _AudioServer._() : super._();

  factory _AudioServer.fromJson(Map<String, dynamic> json) =
      _$_AudioServer.fromJson;

  @override
  String get name;
  @override
  bool get running;
  @override
  String get version;
  @override
  @JsonKey(ignore: true)
  _$$_AudioServerCopyWith<_$_AudioServer> get copyWith =>
      throw _privateConstructorUsedError;
}
