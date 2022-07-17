// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'partition_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PartitionSummary _$PartitionSummaryFromJson(Map<String, dynamic> json) {
  return _PartitionSummary.fromJson(json);
}

/// @nodoc
mixin _$PartitionSummary {
  List<Partition> get partitions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartitionSummaryCopyWith<PartitionSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartitionSummaryCopyWith<$Res> {
  factory $PartitionSummaryCopyWith(
          PartitionSummary value, $Res Function(PartitionSummary) then) =
      _$PartitionSummaryCopyWithImpl<$Res>;
  $Res call({List<Partition> partitions});
}

/// @nodoc
class _$PartitionSummaryCopyWithImpl<$Res>
    implements $PartitionSummaryCopyWith<$Res> {
  _$PartitionSummaryCopyWithImpl(this._value, this._then);

  final PartitionSummary _value;
  // ignore: unused_field
  final $Res Function(PartitionSummary) _then;

  @override
  $Res call({
    Object? partitions = freezed,
  }) {
    return _then(_value.copyWith(
      partitions: partitions == freezed
          ? _value.partitions
          : partitions // ignore: cast_nullable_to_non_nullable
              as List<Partition>,
    ));
  }
}

/// @nodoc
abstract class _$$_PartitionSummaryCopyWith<$Res>
    implements $PartitionSummaryCopyWith<$Res> {
  factory _$$_PartitionSummaryCopyWith(
          _$_PartitionSummary value, $Res Function(_$_PartitionSummary) then) =
      __$$_PartitionSummaryCopyWithImpl<$Res>;
  @override
  $Res call({List<Partition> partitions});
}

/// @nodoc
class __$$_PartitionSummaryCopyWithImpl<$Res>
    extends _$PartitionSummaryCopyWithImpl<$Res>
    implements _$$_PartitionSummaryCopyWith<$Res> {
  __$$_PartitionSummaryCopyWithImpl(
      _$_PartitionSummary _value, $Res Function(_$_PartitionSummary) _then)
      : super(_value, (v) => _then(v as _$_PartitionSummary));

  @override
  _$_PartitionSummary get _value => super._value as _$_PartitionSummary;

  @override
  $Res call({
    Object? partitions = freezed,
  }) {
    return _then(_$_PartitionSummary(
      partitions: partitions == freezed
          ? _value._partitions
          : partitions // ignore: cast_nullable_to_non_nullable
              as List<Partition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PartitionSummary extends _PartitionSummary {
  _$_PartitionSummary({required final List<Partition> partitions})
      : _partitions = partitions,
        super._();

  factory _$_PartitionSummary.fromJson(Map<String, dynamic> json) =>
      _$$_PartitionSummaryFromJson(json);

  final List<Partition> _partitions;
  @override
  List<Partition> get partitions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partitions);
  }

  @override
  String toString() {
    return 'PartitionSummary(partitions: $partitions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartitionSummary &&
            const DeepCollectionEquality()
                .equals(other._partitions, _partitions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_partitions));

  @JsonKey(ignore: true)
  @override
  _$$_PartitionSummaryCopyWith<_$_PartitionSummary> get copyWith =>
      __$$_PartitionSummaryCopyWithImpl<_$_PartitionSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartitionSummaryToJson(
      this,
    );
  }
}

abstract class _PartitionSummary extends PartitionSummary {
  factory _PartitionSummary({required final List<Partition> partitions}) =
      _$_PartitionSummary;
  _PartitionSummary._() : super._();

  factory _PartitionSummary.fromJson(Map<String, dynamic> json) =
      _$_PartitionSummary.fromJson;

  @override
  List<Partition> get partitions;
  @override
  @JsonKey(ignore: true)
  _$$_PartitionSummaryCopyWith<_$_PartitionSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
