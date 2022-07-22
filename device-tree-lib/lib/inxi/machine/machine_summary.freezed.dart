// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'machine_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MachineSummary _$MachineSummaryFromJson(Map<String, dynamic> json) {
  return _MachineSummary.fromJson(json);
}

/// @nodoc
mixin _$MachineSummary {
  DeviceTree? get deviceTree => throw _privateConstructorUsedError;
  UEFI get uefi => throw _privateConstructorUsedError;
  OEMInfo? get oemInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MachineSummaryCopyWith<MachineSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineSummaryCopyWith<$Res> {
  factory $MachineSummaryCopyWith(
          MachineSummary value, $Res Function(MachineSummary) then) =
      _$MachineSummaryCopyWithImpl<$Res>;
  $Res call({DeviceTree? deviceTree, UEFI uefi, OEMInfo? oemInfo});

  $DeviceTreeCopyWith<$Res>? get deviceTree;
  $UEFICopyWith<$Res> get uefi;
  $OEMInfoCopyWith<$Res>? get oemInfo;
}

/// @nodoc
class _$MachineSummaryCopyWithImpl<$Res>
    implements $MachineSummaryCopyWith<$Res> {
  _$MachineSummaryCopyWithImpl(this._value, this._then);

  final MachineSummary _value;
  // ignore: unused_field
  final $Res Function(MachineSummary) _then;

  @override
  $Res call({
    Object? deviceTree = freezed,
    Object? uefi = freezed,
    Object? oemInfo = freezed,
  }) {
    return _then(_value.copyWith(
      deviceTree: deviceTree == freezed
          ? _value.deviceTree
          : deviceTree // ignore: cast_nullable_to_non_nullable
              as DeviceTree?,
      uefi: uefi == freezed
          ? _value.uefi
          : uefi // ignore: cast_nullable_to_non_nullable
              as UEFI,
      oemInfo: oemInfo == freezed
          ? _value.oemInfo
          : oemInfo // ignore: cast_nullable_to_non_nullable
              as OEMInfo?,
    ));
  }

  @override
  $DeviceTreeCopyWith<$Res>? get deviceTree {
    if (_value.deviceTree == null) {
      return null;
    }

    return $DeviceTreeCopyWith<$Res>(_value.deviceTree!, (value) {
      return _then(_value.copyWith(deviceTree: value));
    });
  }

  @override
  $UEFICopyWith<$Res> get uefi {
    return $UEFICopyWith<$Res>(_value.uefi, (value) {
      return _then(_value.copyWith(uefi: value));
    });
  }

  @override
  $OEMInfoCopyWith<$Res>? get oemInfo {
    if (_value.oemInfo == null) {
      return null;
    }

    return $OEMInfoCopyWith<$Res>(_value.oemInfo!, (value) {
      return _then(_value.copyWith(oemInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_MachineSummaryCopyWith<$Res>
    implements $MachineSummaryCopyWith<$Res> {
  factory _$$_MachineSummaryCopyWith(
          _$_MachineSummary value, $Res Function(_$_MachineSummary) then) =
      __$$_MachineSummaryCopyWithImpl<$Res>;
  @override
  $Res call({DeviceTree? deviceTree, UEFI uefi, OEMInfo? oemInfo});

  @override
  $DeviceTreeCopyWith<$Res>? get deviceTree;
  @override
  $UEFICopyWith<$Res> get uefi;
  @override
  $OEMInfoCopyWith<$Res>? get oemInfo;
}

/// @nodoc
class __$$_MachineSummaryCopyWithImpl<$Res>
    extends _$MachineSummaryCopyWithImpl<$Res>
    implements _$$_MachineSummaryCopyWith<$Res> {
  __$$_MachineSummaryCopyWithImpl(
      _$_MachineSummary _value, $Res Function(_$_MachineSummary) _then)
      : super(_value, (v) => _then(v as _$_MachineSummary));

  @override
  _$_MachineSummary get _value => super._value as _$_MachineSummary;

  @override
  $Res call({
    Object? deviceTree = freezed,
    Object? uefi = freezed,
    Object? oemInfo = freezed,
  }) {
    return _then(_$_MachineSummary(
      deviceTree: deviceTree == freezed
          ? _value.deviceTree
          : deviceTree // ignore: cast_nullable_to_non_nullable
              as DeviceTree?,
      uefi: uefi == freezed
          ? _value.uefi
          : uefi // ignore: cast_nullable_to_non_nullable
              as UEFI,
      oemInfo: oemInfo == freezed
          ? _value.oemInfo
          : oemInfo // ignore: cast_nullable_to_non_nullable
              as OEMInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MachineSummary extends _MachineSummary {
  _$_MachineSummary({this.deviceTree, required this.uefi, this.oemInfo})
      : super._();

  factory _$_MachineSummary.fromJson(Map<String, dynamic> json) =>
      _$$_MachineSummaryFromJson(json);

  @override
  final DeviceTree? deviceTree;
  @override
  final UEFI uefi;
  @override
  final OEMInfo? oemInfo;

  @override
  String toString() {
    return 'MachineSummary(deviceTree: $deviceTree, uefi: $uefi, oemInfo: $oemInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MachineSummary &&
            const DeepCollectionEquality()
                .equals(other.deviceTree, deviceTree) &&
            const DeepCollectionEquality().equals(other.uefi, uefi) &&
            const DeepCollectionEquality().equals(other.oemInfo, oemInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(deviceTree),
      const DeepCollectionEquality().hash(uefi),
      const DeepCollectionEquality().hash(oemInfo));

  @JsonKey(ignore: true)
  @override
  _$$_MachineSummaryCopyWith<_$_MachineSummary> get copyWith =>
      __$$_MachineSummaryCopyWithImpl<_$_MachineSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MachineSummaryToJson(
      this,
    );
  }
}

abstract class _MachineSummary extends MachineSummary {
  factory _MachineSummary(
      {final DeviceTree? deviceTree,
      required final UEFI uefi,
      final OEMInfo? oemInfo}) = _$_MachineSummary;
  _MachineSummary._() : super._();

  factory _MachineSummary.fromJson(Map<String, dynamic> json) =
      _$_MachineSummary.fromJson;

  @override
  DeviceTree? get deviceTree;
  @override
  UEFI get uefi;
  @override
  OEMInfo? get oemInfo;
  @override
  @JsonKey(ignore: true)
  _$$_MachineSummaryCopyWith<_$_MachineSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
