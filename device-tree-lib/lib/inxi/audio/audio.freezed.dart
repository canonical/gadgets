// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'audio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AudioSummary _$AudioSummaryFromJson(Map<String, dynamic> json) {
  return _AudioSummary.fromJson(json);
}

/// @nodoc
mixin _$AudioSummary {
  List<AudioServer> get servers => throw _privateConstructorUsedError;
  List<PCIAudioDevice> get pciAudioDevices =>
      throw _privateConstructorUsedError;
  List<USBAudioDevice> get usbAudioDevices =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioSummaryCopyWith<AudioSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioSummaryCopyWith<$Res> {
  factory $AudioSummaryCopyWith(
          AudioSummary value, $Res Function(AudioSummary) then) =
      _$AudioSummaryCopyWithImpl<$Res>;
  $Res call(
      {List<AudioServer> servers,
      List<PCIAudioDevice> pciAudioDevices,
      List<USBAudioDevice> usbAudioDevices});
}

/// @nodoc
class _$AudioSummaryCopyWithImpl<$Res> implements $AudioSummaryCopyWith<$Res> {
  _$AudioSummaryCopyWithImpl(this._value, this._then);

  final AudioSummary _value;
  // ignore: unused_field
  final $Res Function(AudioSummary) _then;

  @override
  $Res call({
    Object? servers = freezed,
    Object? pciAudioDevices = freezed,
    Object? usbAudioDevices = freezed,
  }) {
    return _then(_value.copyWith(
      servers: servers == freezed
          ? _value.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<AudioServer>,
      pciAudioDevices: pciAudioDevices == freezed
          ? _value.pciAudioDevices
          : pciAudioDevices // ignore: cast_nullable_to_non_nullable
              as List<PCIAudioDevice>,
      usbAudioDevices: usbAudioDevices == freezed
          ? _value.usbAudioDevices
          : usbAudioDevices // ignore: cast_nullable_to_non_nullable
              as List<USBAudioDevice>,
    ));
  }
}

/// @nodoc
abstract class _$$_AudioSummaryCopyWith<$Res>
    implements $AudioSummaryCopyWith<$Res> {
  factory _$$_AudioSummaryCopyWith(
          _$_AudioSummary value, $Res Function(_$_AudioSummary) then) =
      __$$_AudioSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<AudioServer> servers,
      List<PCIAudioDevice> pciAudioDevices,
      List<USBAudioDevice> usbAudioDevices});
}

/// @nodoc
class __$$_AudioSummaryCopyWithImpl<$Res>
    extends _$AudioSummaryCopyWithImpl<$Res>
    implements _$$_AudioSummaryCopyWith<$Res> {
  __$$_AudioSummaryCopyWithImpl(
      _$_AudioSummary _value, $Res Function(_$_AudioSummary) _then)
      : super(_value, (v) => _then(v as _$_AudioSummary));

  @override
  _$_AudioSummary get _value => super._value as _$_AudioSummary;

  @override
  $Res call({
    Object? servers = freezed,
    Object? pciAudioDevices = freezed,
    Object? usbAudioDevices = freezed,
  }) {
    return _then(_$_AudioSummary(
      servers: servers == freezed
          ? _value._servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<AudioServer>,
      pciAudioDevices: pciAudioDevices == freezed
          ? _value._pciAudioDevices
          : pciAudioDevices // ignore: cast_nullable_to_non_nullable
              as List<PCIAudioDevice>,
      usbAudioDevices: usbAudioDevices == freezed
          ? _value._usbAudioDevices
          : usbAudioDevices // ignore: cast_nullable_to_non_nullable
              as List<USBAudioDevice>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AudioSummary extends _AudioSummary {
  _$_AudioSummary(
      {required final List<AudioServer> servers,
      required final List<PCIAudioDevice> pciAudioDevices,
      required final List<USBAudioDevice> usbAudioDevices})
      : _servers = servers,
        _pciAudioDevices = pciAudioDevices,
        _usbAudioDevices = usbAudioDevices,
        super._();

  factory _$_AudioSummary.fromJson(Map<String, dynamic> json) =>
      _$$_AudioSummaryFromJson(json);

  final List<AudioServer> _servers;
  @override
  List<AudioServer> get servers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_servers);
  }

  final List<PCIAudioDevice> _pciAudioDevices;
  @override
  List<PCIAudioDevice> get pciAudioDevices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pciAudioDevices);
  }

  final List<USBAudioDevice> _usbAudioDevices;
  @override
  List<USBAudioDevice> get usbAudioDevices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usbAudioDevices);
  }

  @override
  String toString() {
    return 'AudioSummary(servers: $servers, pciAudioDevices: $pciAudioDevices, usbAudioDevices: $usbAudioDevices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioSummary &&
            const DeepCollectionEquality().equals(other._servers, _servers) &&
            const DeepCollectionEquality()
                .equals(other._pciAudioDevices, _pciAudioDevices) &&
            const DeepCollectionEquality()
                .equals(other._usbAudioDevices, _usbAudioDevices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_servers),
      const DeepCollectionEquality().hash(_pciAudioDevices),
      const DeepCollectionEquality().hash(_usbAudioDevices));

  @JsonKey(ignore: true)
  @override
  _$$_AudioSummaryCopyWith<_$_AudioSummary> get copyWith =>
      __$$_AudioSummaryCopyWithImpl<_$_AudioSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AudioSummaryToJson(
      this,
    );
  }
}

abstract class _AudioSummary extends AudioSummary {
  factory _AudioSummary(
      {required final List<AudioServer> servers,
      required final List<PCIAudioDevice> pciAudioDevices,
      required final List<USBAudioDevice> usbAudioDevices}) = _$_AudioSummary;
  _AudioSummary._() : super._();

  factory _AudioSummary.fromJson(Map<String, dynamic> json) =
      _$_AudioSummary.fromJson;

  @override
  List<AudioServer> get servers;
  @override
  List<PCIAudioDevice> get pciAudioDevices;
  @override
  List<USBAudioDevice> get usbAudioDevices;
  @override
  @JsonKey(ignore: true)
  _$$_AudioSummaryCopyWith<_$_AudioSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
