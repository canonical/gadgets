// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cpu_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CPUSummary _$CPUSummaryFromJson(Map<String, dynamic> json) {
  return _CPUSummary.fromJson(json);
}

/// @nodoc
mixin _$CPUSummary {
  CPU get cpu => throw _privateConstructorUsedError;
  CPUCoreInfo? get coreInfo => throw _privateConstructorUsedError;
  CPUCompilerFlags? get flags => throw _privateConstructorUsedError;
  CPUCoreFrequencyInfo? get coreFrequencyInfo =>
      throw _privateConstructorUsedError;
  CPUVulnerabilityInfo get vulnerabilityInfo =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CPUSummaryCopyWith<CPUSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPUSummaryCopyWith<$Res> {
  factory $CPUSummaryCopyWith(
          CPUSummary value, $Res Function(CPUSummary) then) =
      _$CPUSummaryCopyWithImpl<$Res>;
  $Res call(
      {CPU cpu,
      CPUCoreInfo? coreInfo,
      CPUCompilerFlags? flags,
      CPUCoreFrequencyInfo? coreFrequencyInfo,
      CPUVulnerabilityInfo vulnerabilityInfo});

  $CPUCopyWith<$Res> get cpu;
  $CPUCoreInfoCopyWith<$Res>? get coreInfo;
  $CPUCompilerFlagsCopyWith<$Res>? get flags;
  $CPUCoreFrequencyInfoCopyWith<$Res>? get coreFrequencyInfo;
  $CPUVulnerabilityInfoCopyWith<$Res> get vulnerabilityInfo;
}

/// @nodoc
class _$CPUSummaryCopyWithImpl<$Res> implements $CPUSummaryCopyWith<$Res> {
  _$CPUSummaryCopyWithImpl(this._value, this._then);

  final CPUSummary _value;
  // ignore: unused_field
  final $Res Function(CPUSummary) _then;

  @override
  $Res call({
    Object? cpu = freezed,
    Object? coreInfo = freezed,
    Object? flags = freezed,
    Object? coreFrequencyInfo = freezed,
    Object? vulnerabilityInfo = freezed,
  }) {
    return _then(_value.copyWith(
      cpu: cpu == freezed
          ? _value.cpu
          : cpu // ignore: cast_nullable_to_non_nullable
              as CPU,
      coreInfo: coreInfo == freezed
          ? _value.coreInfo
          : coreInfo // ignore: cast_nullable_to_non_nullable
              as CPUCoreInfo?,
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as CPUCompilerFlags?,
      coreFrequencyInfo: coreFrequencyInfo == freezed
          ? _value.coreFrequencyInfo
          : coreFrequencyInfo // ignore: cast_nullable_to_non_nullable
              as CPUCoreFrequencyInfo?,
      vulnerabilityInfo: vulnerabilityInfo == freezed
          ? _value.vulnerabilityInfo
          : vulnerabilityInfo // ignore: cast_nullable_to_non_nullable
              as CPUVulnerabilityInfo,
    ));
  }

  @override
  $CPUCopyWith<$Res> get cpu {
    return $CPUCopyWith<$Res>(_value.cpu, (value) {
      return _then(_value.copyWith(cpu: value));
    });
  }

  @override
  $CPUCoreInfoCopyWith<$Res>? get coreInfo {
    if (_value.coreInfo == null) {
      return null;
    }

    return $CPUCoreInfoCopyWith<$Res>(_value.coreInfo!, (value) {
      return _then(_value.copyWith(coreInfo: value));
    });
  }

  @override
  $CPUCompilerFlagsCopyWith<$Res>? get flags {
    if (_value.flags == null) {
      return null;
    }

    return $CPUCompilerFlagsCopyWith<$Res>(_value.flags!, (value) {
      return _then(_value.copyWith(flags: value));
    });
  }

  @override
  $CPUCoreFrequencyInfoCopyWith<$Res>? get coreFrequencyInfo {
    if (_value.coreFrequencyInfo == null) {
      return null;
    }

    return $CPUCoreFrequencyInfoCopyWith<$Res>(_value.coreFrequencyInfo!,
        (value) {
      return _then(_value.copyWith(coreFrequencyInfo: value));
    });
  }

  @override
  $CPUVulnerabilityInfoCopyWith<$Res> get vulnerabilityInfo {
    return $CPUVulnerabilityInfoCopyWith<$Res>(_value.vulnerabilityInfo,
        (value) {
      return _then(_value.copyWith(vulnerabilityInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_CPUSummaryCopyWith<$Res>
    implements $CPUSummaryCopyWith<$Res> {
  factory _$$_CPUSummaryCopyWith(
          _$_CPUSummary value, $Res Function(_$_CPUSummary) then) =
      __$$_CPUSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {CPU cpu,
      CPUCoreInfo? coreInfo,
      CPUCompilerFlags? flags,
      CPUCoreFrequencyInfo? coreFrequencyInfo,
      CPUVulnerabilityInfo vulnerabilityInfo});

  @override
  $CPUCopyWith<$Res> get cpu;
  @override
  $CPUCoreInfoCopyWith<$Res>? get coreInfo;
  @override
  $CPUCompilerFlagsCopyWith<$Res>? get flags;
  @override
  $CPUCoreFrequencyInfoCopyWith<$Res>? get coreFrequencyInfo;
  @override
  $CPUVulnerabilityInfoCopyWith<$Res> get vulnerabilityInfo;
}

/// @nodoc
class __$$_CPUSummaryCopyWithImpl<$Res> extends _$CPUSummaryCopyWithImpl<$Res>
    implements _$$_CPUSummaryCopyWith<$Res> {
  __$$_CPUSummaryCopyWithImpl(
      _$_CPUSummary _value, $Res Function(_$_CPUSummary) _then)
      : super(_value, (v) => _then(v as _$_CPUSummary));

  @override
  _$_CPUSummary get _value => super._value as _$_CPUSummary;

  @override
  $Res call({
    Object? cpu = freezed,
    Object? coreInfo = freezed,
    Object? flags = freezed,
    Object? coreFrequencyInfo = freezed,
    Object? vulnerabilityInfo = freezed,
  }) {
    return _then(_$_CPUSummary(
      cpu: cpu == freezed
          ? _value.cpu
          : cpu // ignore: cast_nullable_to_non_nullable
              as CPU,
      coreInfo: coreInfo == freezed
          ? _value.coreInfo
          : coreInfo // ignore: cast_nullable_to_non_nullable
              as CPUCoreInfo?,
      flags: flags == freezed
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as CPUCompilerFlags?,
      coreFrequencyInfo: coreFrequencyInfo == freezed
          ? _value.coreFrequencyInfo
          : coreFrequencyInfo // ignore: cast_nullable_to_non_nullable
              as CPUCoreFrequencyInfo?,
      vulnerabilityInfo: vulnerabilityInfo == freezed
          ? _value.vulnerabilityInfo
          : vulnerabilityInfo // ignore: cast_nullable_to_non_nullable
              as CPUVulnerabilityInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CPUSummary extends _CPUSummary {
  _$_CPUSummary(
      {required this.cpu,
      this.coreInfo,
      this.flags,
      this.coreFrequencyInfo,
      required this.vulnerabilityInfo})
      : super._();

  factory _$_CPUSummary.fromJson(Map<String, dynamic> json) =>
      _$$_CPUSummaryFromJson(json);

  @override
  final CPU cpu;
  @override
  final CPUCoreInfo? coreInfo;
  @override
  final CPUCompilerFlags? flags;
  @override
  final CPUCoreFrequencyInfo? coreFrequencyInfo;
  @override
  final CPUVulnerabilityInfo vulnerabilityInfo;

  @override
  String toString() {
    return 'CPUSummary(cpu: $cpu, coreInfo: $coreInfo, flags: $flags, coreFrequencyInfo: $coreFrequencyInfo, vulnerabilityInfo: $vulnerabilityInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CPUSummary &&
            const DeepCollectionEquality().equals(other.cpu, cpu) &&
            const DeepCollectionEquality().equals(other.coreInfo, coreInfo) &&
            const DeepCollectionEquality().equals(other.flags, flags) &&
            const DeepCollectionEquality()
                .equals(other.coreFrequencyInfo, coreFrequencyInfo) &&
            const DeepCollectionEquality()
                .equals(other.vulnerabilityInfo, vulnerabilityInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cpu),
      const DeepCollectionEquality().hash(coreInfo),
      const DeepCollectionEquality().hash(flags),
      const DeepCollectionEquality().hash(coreFrequencyInfo),
      const DeepCollectionEquality().hash(vulnerabilityInfo));

  @JsonKey(ignore: true)
  @override
  _$$_CPUSummaryCopyWith<_$_CPUSummary> get copyWith =>
      __$$_CPUSummaryCopyWithImpl<_$_CPUSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CPUSummaryToJson(
      this,
    );
  }
}

abstract class _CPUSummary extends CPUSummary {
  factory _CPUSummary(
      {required final CPU cpu,
      final CPUCoreInfo? coreInfo,
      final CPUCompilerFlags? flags,
      final CPUCoreFrequencyInfo? coreFrequencyInfo,
      required final CPUVulnerabilityInfo vulnerabilityInfo}) = _$_CPUSummary;
  _CPUSummary._() : super._();

  factory _CPUSummary.fromJson(Map<String, dynamic> json) =
      _$_CPUSummary.fromJson;

  @override
  CPU get cpu;
  @override
  CPUCoreInfo? get coreInfo;
  @override
  CPUCompilerFlags? get flags;
  @override
  CPUCoreFrequencyInfo? get coreFrequencyInfo;
  @override
  CPUVulnerabilityInfo get vulnerabilityInfo;
  @override
  @JsonKey(ignore: true)
  _$$_CPUSummaryCopyWith<_$_CPUSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
