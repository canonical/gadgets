// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cpu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CPU _$CPUFromJson(Map<String, dynamic> json) {
  return _CPU.fromJson(json);
}

/// @nodoc
mixin _$CPU {
  String get family => throw _privateConstructorUsedError;
  int? get stepping => throw _privateConstructorUsedError;
  String? get microcode => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get modelID => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get bits => throw _privateConstructorUsedError;
  String get architecture => throw _privateConstructorUsedError;
  String? get socket => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CPUCopyWith<CPU> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPUCopyWith<$Res> {
  factory $CPUCopyWith(CPU value, $Res Function(CPU) then) =
      _$CPUCopyWithImpl<$Res>;
  $Res call(
      {String family,
      int? stepping,
      String? microcode,
      String model,
      String modelID,
      String type,
      int bits,
      String architecture,
      String? socket});
}

/// @nodoc
class _$CPUCopyWithImpl<$Res> implements $CPUCopyWith<$Res> {
  _$CPUCopyWithImpl(this._value, this._then);

  final CPU _value;
  // ignore: unused_field
  final $Res Function(CPU) _then;

  @override
  $Res call({
    Object? family = freezed,
    Object? stepping = freezed,
    Object? microcode = freezed,
    Object? model = freezed,
    Object? modelID = freezed,
    Object? type = freezed,
    Object? bits = freezed,
    Object? architecture = freezed,
    Object? socket = freezed,
  }) {
    return _then(_value.copyWith(
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      stepping: stepping == freezed
          ? _value.stepping
          : stepping // ignore: cast_nullable_to_non_nullable
              as int?,
      microcode: microcode == freezed
          ? _value.microcode
          : microcode // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      modelID: modelID == freezed
          ? _value.modelID
          : modelID // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bits: bits == freezed
          ? _value.bits
          : bits // ignore: cast_nullable_to_non_nullable
              as int,
      architecture: architecture == freezed
          ? _value.architecture
          : architecture // ignore: cast_nullable_to_non_nullable
              as String,
      socket: socket == freezed
          ? _value.socket
          : socket // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CPUCopyWith<$Res> implements $CPUCopyWith<$Res> {
  factory _$$_CPUCopyWith(_$_CPU value, $Res Function(_$_CPU) then) =
      __$$_CPUCopyWithImpl<$Res>;
  @override
  $Res call(
      {String family,
      int? stepping,
      String? microcode,
      String model,
      String modelID,
      String type,
      int bits,
      String architecture,
      String? socket});
}

/// @nodoc
class __$$_CPUCopyWithImpl<$Res> extends _$CPUCopyWithImpl<$Res>
    implements _$$_CPUCopyWith<$Res> {
  __$$_CPUCopyWithImpl(_$_CPU _value, $Res Function(_$_CPU) _then)
      : super(_value, (v) => _then(v as _$_CPU));

  @override
  _$_CPU get _value => super._value as _$_CPU;

  @override
  $Res call({
    Object? family = freezed,
    Object? stepping = freezed,
    Object? microcode = freezed,
    Object? model = freezed,
    Object? modelID = freezed,
    Object? type = freezed,
    Object? bits = freezed,
    Object? architecture = freezed,
    Object? socket = freezed,
  }) {
    return _then(_$_CPU(
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      stepping: stepping == freezed
          ? _value.stepping
          : stepping // ignore: cast_nullable_to_non_nullable
              as int?,
      microcode: microcode == freezed
          ? _value.microcode
          : microcode // ignore: cast_nullable_to_non_nullable
              as String?,
      model: model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      modelID: modelID == freezed
          ? _value.modelID
          : modelID // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      bits: bits == freezed
          ? _value.bits
          : bits // ignore: cast_nullable_to_non_nullable
              as int,
      architecture: architecture == freezed
          ? _value.architecture
          : architecture // ignore: cast_nullable_to_non_nullable
              as String,
      socket: socket == freezed
          ? _value.socket
          : socket // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CPU extends _CPU {
  _$_CPU(
      {required this.family,
      required this.stepping,
      this.microcode,
      required this.model,
      required this.modelID,
      required this.type,
      required this.bits,
      required this.architecture,
      this.socket})
      : super._();

  factory _$_CPU.fromJson(Map<String, dynamic> json) => _$$_CPUFromJson(json);

  @override
  final String family;
  @override
  final int? stepping;
  @override
  final String? microcode;
  @override
  final String model;
  @override
  final String modelID;
  @override
  final String type;
  @override
  final int bits;
  @override
  final String architecture;
  @override
  final String? socket;

  @override
  String toString() {
    return 'CPU(family: $family, stepping: $stepping, microcode: $microcode, model: $model, modelID: $modelID, type: $type, bits: $bits, architecture: $architecture, socket: $socket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CPU &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.stepping, stepping) &&
            const DeepCollectionEquality().equals(other.microcode, microcode) &&
            const DeepCollectionEquality().equals(other.model, model) &&
            const DeepCollectionEquality().equals(other.modelID, modelID) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.bits, bits) &&
            const DeepCollectionEquality()
                .equals(other.architecture, architecture) &&
            const DeepCollectionEquality().equals(other.socket, socket));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(stepping),
      const DeepCollectionEquality().hash(microcode),
      const DeepCollectionEquality().hash(model),
      const DeepCollectionEquality().hash(modelID),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(bits),
      const DeepCollectionEquality().hash(architecture),
      const DeepCollectionEquality().hash(socket));

  @JsonKey(ignore: true)
  @override
  _$$_CPUCopyWith<_$_CPU> get copyWith =>
      __$$_CPUCopyWithImpl<_$_CPU>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CPUToJson(
      this,
    );
  }
}

abstract class _CPU extends CPU {
  factory _CPU(
      {required final String family,
      required final int? stepping,
      final String? microcode,
      required final String model,
      required final String modelID,
      required final String type,
      required final int bits,
      required final String architecture,
      final String? socket}) = _$_CPU;
  _CPU._() : super._();

  factory _CPU.fromJson(Map<String, dynamic> json) = _$_CPU.fromJson;

  @override
  String get family;
  @override
  int? get stepping;
  @override
  String? get microcode;
  @override
  String get model;
  @override
  String get modelID;
  @override
  String get type;
  @override
  int get bits;
  @override
  String get architecture;
  @override
  String? get socket;
  @override
  @JsonKey(ignore: true)
  _$$_CPUCopyWith<_$_CPU> get copyWith => throw _privateConstructorUsedError;
}
