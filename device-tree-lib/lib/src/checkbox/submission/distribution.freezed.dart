// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'distribution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Distribution _$DistributionFromJson(Map<String, dynamic> json) {
  return _Distribution.fromJson(json);
}

/// @nodoc
mixin _$Distribution {
  String? get codename => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'distributor_id')
  String? get distributorId => throw _privateConstructorUsedError;
  String? get release => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistributionCopyWith<Distribution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistributionCopyWith<$Res> {
  factory $DistributionCopyWith(
          Distribution value, $Res Function(Distribution) then) =
      _$DistributionCopyWithImpl<$Res>;
  $Res call(
      {String? codename,
      String? description,
      @JsonKey(name: 'distributor_id') String? distributorId,
      String? release});
}

/// @nodoc
class _$DistributionCopyWithImpl<$Res> implements $DistributionCopyWith<$Res> {
  _$DistributionCopyWithImpl(this._value, this._then);

  final Distribution _value;
  // ignore: unused_field
  final $Res Function(Distribution) _then;

  @override
  $Res call({
    Object? codename = freezed,
    Object? description = freezed,
    Object? distributorId = freezed,
    Object? release = freezed,
  }) {
    return _then(_value.copyWith(
      codename: codename == freezed
          ? _value.codename
          : codename // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      distributorId: distributorId == freezed
          ? _value.distributorId
          : distributorId // ignore: cast_nullable_to_non_nullable
              as String?,
      release: release == freezed
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DistributionCopyWith<$Res>
    implements $DistributionCopyWith<$Res> {
  factory _$$_DistributionCopyWith(
          _$_Distribution value, $Res Function(_$_Distribution) then) =
      __$$_DistributionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? codename,
      String? description,
      @JsonKey(name: 'distributor_id') String? distributorId,
      String? release});
}

/// @nodoc
class __$$_DistributionCopyWithImpl<$Res>
    extends _$DistributionCopyWithImpl<$Res>
    implements _$$_DistributionCopyWith<$Res> {
  __$$_DistributionCopyWithImpl(
      _$_Distribution _value, $Res Function(_$_Distribution) _then)
      : super(_value, (v) => _then(v as _$_Distribution));

  @override
  _$_Distribution get _value => super._value as _$_Distribution;

  @override
  $Res call({
    Object? codename = freezed,
    Object? description = freezed,
    Object? distributorId = freezed,
    Object? release = freezed,
  }) {
    return _then(_$_Distribution(
      codename: codename == freezed
          ? _value.codename
          : codename // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      distributorId: distributorId == freezed
          ? _value.distributorId
          : distributorId // ignore: cast_nullable_to_non_nullable
              as String?,
      release: release == freezed
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Distribution implements _Distribution {
  _$_Distribution(
      {this.codename,
      this.description,
      @JsonKey(name: 'distributor_id') this.distributorId,
      this.release});

  factory _$_Distribution.fromJson(Map<String, dynamic> json) =>
      _$$_DistributionFromJson(json);

  @override
  final String? codename;
  @override
  final String? description;
  @override
  @JsonKey(name: 'distributor_id')
  final String? distributorId;
  @override
  final String? release;

  @override
  String toString() {
    return 'Distribution(codename: $codename, description: $description, distributorId: $distributorId, release: $release)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Distribution &&
            const DeepCollectionEquality().equals(other.codename, codename) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.distributorId, distributorId) &&
            const DeepCollectionEquality().equals(other.release, release));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(codename),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(distributorId),
      const DeepCollectionEquality().hash(release));

  @JsonKey(ignore: true)
  @override
  _$$_DistributionCopyWith<_$_Distribution> get copyWith =>
      __$$_DistributionCopyWithImpl<_$_Distribution>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DistributionToJson(
      this,
    );
  }
}

abstract class _Distribution implements Distribution {
  factory _Distribution(
      {final String? codename,
      final String? description,
      @JsonKey(name: 'distributor_id') final String? distributorId,
      final String? release}) = _$_Distribution;

  factory _Distribution.fromJson(Map<String, dynamic> json) =
      _$_Distribution.fromJson;

  @override
  String? get codename;
  @override
  String? get description;
  @override
  @JsonKey(name: 'distributor_id')
  String? get distributorId;
  @override
  String? get release;
  @override
  @JsonKey(ignore: true)
  _$$_DistributionCopyWith<_$_Distribution> get copyWith =>
      throw _privateConstructorUsedError;
}
