// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bluetooth_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BluetoothSummary _$BluetoothSummaryFromJson(Map<String, dynamic> json) {
  return _BluetoothSummary.fromJson(json);
}

/// @nodoc
mixin _$BluetoothSummary {
  BluetoothChip get chip => throw _privateConstructorUsedError;
  BluetoothService get service => throw _privateConstructorUsedError;
  BluetoothLink get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BluetoothSummaryCopyWith<BluetoothSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothSummaryCopyWith<$Res> {
  factory $BluetoothSummaryCopyWith(
          BluetoothSummary value, $Res Function(BluetoothSummary) then) =
      _$BluetoothSummaryCopyWithImpl<$Res>;
  $Res call({BluetoothChip chip, BluetoothService service, BluetoothLink link});

  $BluetoothChipCopyWith<$Res> get chip;
  $BluetoothServiceCopyWith<$Res> get service;
  $BluetoothLinkCopyWith<$Res> get link;
}

/// @nodoc
class _$BluetoothSummaryCopyWithImpl<$Res>
    implements $BluetoothSummaryCopyWith<$Res> {
  _$BluetoothSummaryCopyWithImpl(this._value, this._then);

  final BluetoothSummary _value;
  // ignore: unused_field
  final $Res Function(BluetoothSummary) _then;

  @override
  $Res call({
    Object? chip = freezed,
    Object? service = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      chip: chip == freezed
          ? _value.chip
          : chip // ignore: cast_nullable_to_non_nullable
              as BluetoothChip,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as BluetoothService,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as BluetoothLink,
    ));
  }

  @override
  $BluetoothChipCopyWith<$Res> get chip {
    return $BluetoothChipCopyWith<$Res>(_value.chip, (value) {
      return _then(_value.copyWith(chip: value));
    });
  }

  @override
  $BluetoothServiceCopyWith<$Res> get service {
    return $BluetoothServiceCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value));
    });
  }

  @override
  $BluetoothLinkCopyWith<$Res> get link {
    return $BluetoothLinkCopyWith<$Res>(_value.link, (value) {
      return _then(_value.copyWith(link: value));
    });
  }
}

/// @nodoc
abstract class _$$_BluetoothSummaryCopyWith<$Res>
    implements $BluetoothSummaryCopyWith<$Res> {
  factory _$$_BluetoothSummaryCopyWith(
          _$_BluetoothSummary value, $Res Function(_$_BluetoothSummary) then) =
      __$$_BluetoothSummaryCopyWithImpl<$Res>;
  @override
  $Res call({BluetoothChip chip, BluetoothService service, BluetoothLink link});

  @override
  $BluetoothChipCopyWith<$Res> get chip;
  @override
  $BluetoothServiceCopyWith<$Res> get service;
  @override
  $BluetoothLinkCopyWith<$Res> get link;
}

/// @nodoc
class __$$_BluetoothSummaryCopyWithImpl<$Res>
    extends _$BluetoothSummaryCopyWithImpl<$Res>
    implements _$$_BluetoothSummaryCopyWith<$Res> {
  __$$_BluetoothSummaryCopyWithImpl(
      _$_BluetoothSummary _value, $Res Function(_$_BluetoothSummary) _then)
      : super(_value, (v) => _then(v as _$_BluetoothSummary));

  @override
  _$_BluetoothSummary get _value => super._value as _$_BluetoothSummary;

  @override
  $Res call({
    Object? chip = freezed,
    Object? service = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_BluetoothSummary(
      chip: chip == freezed
          ? _value.chip
          : chip // ignore: cast_nullable_to_non_nullable
              as BluetoothChip,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as BluetoothService,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as BluetoothLink,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BluetoothSummary extends _BluetoothSummary {
  _$_BluetoothSummary(
      {required this.chip, required this.service, required this.link})
      : super._();

  factory _$_BluetoothSummary.fromJson(Map<String, dynamic> json) =>
      _$$_BluetoothSummaryFromJson(json);

  @override
  final BluetoothChip chip;
  @override
  final BluetoothService service;
  @override
  final BluetoothLink link;

  @override
  String toString() {
    return 'BluetoothSummary(chip: $chip, service: $service, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BluetoothSummary &&
            const DeepCollectionEquality().equals(other.chip, chip) &&
            const DeepCollectionEquality().equals(other.service, service) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chip),
      const DeepCollectionEquality().hash(service),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_BluetoothSummaryCopyWith<_$_BluetoothSummary> get copyWith =>
      __$$_BluetoothSummaryCopyWithImpl<_$_BluetoothSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BluetoothSummaryToJson(
      this,
    );
  }
}

abstract class _BluetoothSummary extends BluetoothSummary {
  factory _BluetoothSummary(
      {required final BluetoothChip chip,
      required final BluetoothService service,
      required final BluetoothLink link}) = _$_BluetoothSummary;
  _BluetoothSummary._() : super._();

  factory _BluetoothSummary.fromJson(Map<String, dynamic> json) =
      _$_BluetoothSummary.fromJson;

  @override
  BluetoothChip get chip;
  @override
  BluetoothService get service;
  @override
  BluetoothLink get link;
  @override
  @JsonKey(ignore: true)
  _$$_BluetoothSummaryCopyWith<_$_BluetoothSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
