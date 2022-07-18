// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'raid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RAIDSummary _$RAIDSummaryFromJson(Map<String, dynamic> json) {
  return _RAIDSummary.fromJson(json);
}

/// @nodoc
mixin _$RAIDSummary {
  List<RAID> get volumes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RAIDSummaryCopyWith<RAIDSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RAIDSummaryCopyWith<$Res> {
  factory $RAIDSummaryCopyWith(
          RAIDSummary value, $Res Function(RAIDSummary) then) =
      _$RAIDSummaryCopyWithImpl<$Res>;
  $Res call({List<RAID> volumes});
}

/// @nodoc
class _$RAIDSummaryCopyWithImpl<$Res> implements $RAIDSummaryCopyWith<$Res> {
  _$RAIDSummaryCopyWithImpl(this._value, this._then);

  final RAIDSummary _value;
  // ignore: unused_field
  final $Res Function(RAIDSummary) _then;

  @override
  $Res call({
    Object? volumes = freezed,
  }) {
    return _then(_value.copyWith(
      volumes: volumes == freezed
          ? _value.volumes
          : volumes // ignore: cast_nullable_to_non_nullable
              as List<RAID>,
    ));
  }
}

/// @nodoc
abstract class _$$_RAIDSummaryCopyWith<$Res>
    implements $RAIDSummaryCopyWith<$Res> {
  factory _$$_RAIDSummaryCopyWith(
          _$_RAIDSummary value, $Res Function(_$_RAIDSummary) then) =
      __$$_RAIDSummaryCopyWithImpl<$Res>;
  @override
  $Res call({List<RAID> volumes});
}

/// @nodoc
class __$$_RAIDSummaryCopyWithImpl<$Res> extends _$RAIDSummaryCopyWithImpl<$Res>
    implements _$$_RAIDSummaryCopyWith<$Res> {
  __$$_RAIDSummaryCopyWithImpl(
      _$_RAIDSummary _value, $Res Function(_$_RAIDSummary) _then)
      : super(_value, (v) => _then(v as _$_RAIDSummary));

  @override
  _$_RAIDSummary get _value => super._value as _$_RAIDSummary;

  @override
  $Res call({
    Object? volumes = freezed,
  }) {
    return _then(_$_RAIDSummary(
      volumes: volumes == freezed
          ? _value._volumes
          : volumes // ignore: cast_nullable_to_non_nullable
              as List<RAID>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RAIDSummary extends _RAIDSummary {
  _$_RAIDSummary({required final List<RAID> volumes})
      : _volumes = volumes,
        super._();

  factory _$_RAIDSummary.fromJson(Map<String, dynamic> json) =>
      _$$_RAIDSummaryFromJson(json);

  final List<RAID> _volumes;
  @override
  List<RAID> get volumes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_volumes);
  }

  @override
  String toString() {
    return 'RAIDSummary(volumes: $volumes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RAIDSummary &&
            const DeepCollectionEquality().equals(other._volumes, _volumes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_volumes));

  @JsonKey(ignore: true)
  @override
  _$$_RAIDSummaryCopyWith<_$_RAIDSummary> get copyWith =>
      __$$_RAIDSummaryCopyWithImpl<_$_RAIDSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RAIDSummaryToJson(
      this,
    );
  }
}

abstract class _RAIDSummary extends RAIDSummary {
  factory _RAIDSummary({required final List<RAID> volumes}) = _$_RAIDSummary;
  _RAIDSummary._() : super._();

  factory _RAIDSummary.fromJson(Map<String, dynamic> json) =
      _$_RAIDSummary.fromJson;

  @override
  List<RAID> get volumes;
  @override
  @JsonKey(ignore: true)
  _$$_RAIDSummaryCopyWith<_$_RAIDSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

RAID _$RAIDFromJson(Map<String, dynamic> json) {
  return _RAID.fromJson(json);
}

/// @nodoc
mixin _$RAID {
  String get free => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get device => throw _privateConstructorUsedError;
  String get allocated => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RAIDCopyWith<RAID> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RAIDCopyWith<$Res> {
  factory $RAIDCopyWith(RAID value, $Res Function(RAID) then) =
      _$RAIDCopyWithImpl<$Res>;
  $Res call(
      {String free,
      String status,
      String level,
      String device,
      String allocated,
      String size,
      String type});
}

/// @nodoc
class _$RAIDCopyWithImpl<$Res> implements $RAIDCopyWith<$Res> {
  _$RAIDCopyWithImpl(this._value, this._then);

  final RAID _value;
  // ignore: unused_field
  final $Res Function(RAID) _then;

  @override
  $Res call({
    Object? free = freezed,
    Object? status = freezed,
    Object? level = freezed,
    Object? device = freezed,
    Object? allocated = freezed,
    Object? size = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      free: free == freezed
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      allocated: allocated == freezed
          ? _value.allocated
          : allocated // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RAIDCopyWith<$Res> implements $RAIDCopyWith<$Res> {
  factory _$$_RAIDCopyWith(_$_RAID value, $Res Function(_$_RAID) then) =
      __$$_RAIDCopyWithImpl<$Res>;
  @override
  $Res call(
      {String free,
      String status,
      String level,
      String device,
      String allocated,
      String size,
      String type});
}

/// @nodoc
class __$$_RAIDCopyWithImpl<$Res> extends _$RAIDCopyWithImpl<$Res>
    implements _$$_RAIDCopyWith<$Res> {
  __$$_RAIDCopyWithImpl(_$_RAID _value, $Res Function(_$_RAID) _then)
      : super(_value, (v) => _then(v as _$_RAID));

  @override
  _$_RAID get _value => super._value as _$_RAID;

  @override
  $Res call({
    Object? free = freezed,
    Object? status = freezed,
    Object? level = freezed,
    Object? device = freezed,
    Object? allocated = freezed,
    Object? size = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_RAID(
      free: free == freezed
          ? _value.free
          : free // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      device: device == freezed
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
      allocated: allocated == freezed
          ? _value.allocated
          : allocated // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RAID extends _RAID {
  _$_RAID(
      {required this.free,
      required this.status,
      required this.level,
      required this.device,
      required this.allocated,
      required this.size,
      required this.type})
      : super._();

  factory _$_RAID.fromJson(Map<String, dynamic> json) => _$$_RAIDFromJson(json);

  @override
  final String free;
  @override
  final String status;
  @override
  final String level;
  @override
  final String device;
  @override
  final String allocated;
  @override
  final String size;
  @override
  final String type;

  @override
  String toString() {
    return 'RAID(free: $free, status: $status, level: $level, device: $device, allocated: $allocated, size: $size, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RAID &&
            const DeepCollectionEquality().equals(other.free, free) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.device, device) &&
            const DeepCollectionEquality().equals(other.allocated, allocated) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(free),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(device),
      const DeepCollectionEquality().hash(allocated),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_RAIDCopyWith<_$_RAID> get copyWith =>
      __$$_RAIDCopyWithImpl<_$_RAID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RAIDToJson(
      this,
    );
  }
}

abstract class _RAID extends RAID {
  factory _RAID(
      {required final String free,
      required final String status,
      required final String level,
      required final String device,
      required final String allocated,
      required final String size,
      required final String type}) = _$_RAID;
  _RAID._() : super._();

  factory _RAID.fromJson(Map<String, dynamic> json) = _$_RAID.fromJson;

  @override
  String get free;
  @override
  String get status;
  @override
  String get level;
  @override
  String get device;
  @override
  String get allocated;
  @override
  String get size;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_RAIDCopyWith<_$_RAID> get copyWith => throw _privateConstructorUsedError;
}
