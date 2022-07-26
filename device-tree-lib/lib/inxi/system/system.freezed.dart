// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'system.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SystemSummary _$SystemSummaryFromJson(Map<String, dynamic> json) {
  return _SystemSummary.fromJson(json);
}

/// @nodoc
mixin _$SystemSummary {
  Kernel get kernel => throw _privateConstructorUsedError;
  Environment? get environment => throw _privateConstructorUsedError;
  DeviceTree? get deviceTree => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemSummaryCopyWith<SystemSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemSummaryCopyWith<$Res> {
  factory $SystemSummaryCopyWith(
          SystemSummary value, $Res Function(SystemSummary) then) =
      _$SystemSummaryCopyWithImpl<$Res>;
  $Res call({Kernel kernel, Environment? environment, DeviceTree? deviceTree});

  $KernelCopyWith<$Res> get kernel;
  $EnvironmentCopyWith<$Res>? get environment;
  $DeviceTreeCopyWith<$Res>? get deviceTree;
}

/// @nodoc
class _$SystemSummaryCopyWithImpl<$Res>
    implements $SystemSummaryCopyWith<$Res> {
  _$SystemSummaryCopyWithImpl(this._value, this._then);

  final SystemSummary _value;
  // ignore: unused_field
  final $Res Function(SystemSummary) _then;

  @override
  $Res call({
    Object? kernel = freezed,
    Object? environment = freezed,
    Object? deviceTree = freezed,
  }) {
    return _then(_value.copyWith(
      kernel: kernel == freezed
          ? _value.kernel
          : kernel // ignore: cast_nullable_to_non_nullable
              as Kernel,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment?,
      deviceTree: deviceTree == freezed
          ? _value.deviceTree
          : deviceTree // ignore: cast_nullable_to_non_nullable
              as DeviceTree?,
    ));
  }

  @override
  $KernelCopyWith<$Res> get kernel {
    return $KernelCopyWith<$Res>(_value.kernel, (value) {
      return _then(_value.copyWith(kernel: value));
    });
  }

  @override
  $EnvironmentCopyWith<$Res>? get environment {
    if (_value.environment == null) {
      return null;
    }

    return $EnvironmentCopyWith<$Res>(_value.environment!, (value) {
      return _then(_value.copyWith(environment: value));
    });
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
}

/// @nodoc
abstract class _$$_SystemSummaryCopyWith<$Res>
    implements $SystemSummaryCopyWith<$Res> {
  factory _$$_SystemSummaryCopyWith(
          _$_SystemSummary value, $Res Function(_$_SystemSummary) then) =
      __$$_SystemSummaryCopyWithImpl<$Res>;
  @override
  $Res call({Kernel kernel, Environment? environment, DeviceTree? deviceTree});

  @override
  $KernelCopyWith<$Res> get kernel;
  @override
  $EnvironmentCopyWith<$Res>? get environment;
  @override
  $DeviceTreeCopyWith<$Res>? get deviceTree;
}

/// @nodoc
class __$$_SystemSummaryCopyWithImpl<$Res>
    extends _$SystemSummaryCopyWithImpl<$Res>
    implements _$$_SystemSummaryCopyWith<$Res> {
  __$$_SystemSummaryCopyWithImpl(
      _$_SystemSummary _value, $Res Function(_$_SystemSummary) _then)
      : super(_value, (v) => _then(v as _$_SystemSummary));

  @override
  _$_SystemSummary get _value => super._value as _$_SystemSummary;

  @override
  $Res call({
    Object? kernel = freezed,
    Object? environment = freezed,
    Object? deviceTree = freezed,
  }) {
    return _then(_$_SystemSummary(
      kernel: kernel == freezed
          ? _value.kernel
          : kernel // ignore: cast_nullable_to_non_nullable
              as Kernel,
      environment: environment == freezed
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment?,
      deviceTree: deviceTree == freezed
          ? _value.deviceTree
          : deviceTree // ignore: cast_nullable_to_non_nullable
              as DeviceTree?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SystemSummary extends _SystemSummary {
  _$_SystemSummary({required this.kernel, this.environment, this.deviceTree})
      : super._();

  factory _$_SystemSummary.fromJson(Map<String, dynamic> json) =>
      _$$_SystemSummaryFromJson(json);

  @override
  final Kernel kernel;
  @override
  final Environment? environment;
  @override
  final DeviceTree? deviceTree;

  @override
  String toString() {
    return 'SystemSummary(kernel: $kernel, environment: $environment, deviceTree: $deviceTree)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SystemSummary &&
            const DeepCollectionEquality().equals(other.kernel, kernel) &&
            const DeepCollectionEquality()
                .equals(other.environment, environment) &&
            const DeepCollectionEquality()
                .equals(other.deviceTree, deviceTree));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(kernel),
      const DeepCollectionEquality().hash(environment),
      const DeepCollectionEquality().hash(deviceTree));

  @JsonKey(ignore: true)
  @override
  _$$_SystemSummaryCopyWith<_$_SystemSummary> get copyWith =>
      __$$_SystemSummaryCopyWithImpl<_$_SystemSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SystemSummaryToJson(
      this,
    );
  }
}

abstract class _SystemSummary extends SystemSummary {
  factory _SystemSummary(
      {required final Kernel kernel,
      final Environment? environment,
      final DeviceTree? deviceTree}) = _$_SystemSummary;
  _SystemSummary._() : super._();

  factory _SystemSummary.fromJson(Map<String, dynamic> json) =
      _$_SystemSummary.fromJson;

  @override
  Kernel get kernel;
  @override
  Environment? get environment;
  @override
  DeviceTree? get deviceTree;
  @override
  @JsonKey(ignore: true)
  _$$_SystemSummaryCopyWith<_$_SystemSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

Kernel _$KernelFromJson(Map<String, dynamic> json) {
  return _Kernel.fromJson(json);
}

/// @nodoc
mixin _$Kernel {
  String get compilerVersion => throw _privateConstructorUsedError;
  String get compiler => throw _privateConstructorUsedError;
  int get bits => throw _privateConstructorUsedError;
  String? get host => throw _privateConstructorUsedError;
  String get kernelVersion => throw _privateConstructorUsedError;
  String? get parameters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KernelCopyWith<Kernel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KernelCopyWith<$Res> {
  factory $KernelCopyWith(Kernel value, $Res Function(Kernel) then) =
      _$KernelCopyWithImpl<$Res>;
  $Res call(
      {String compilerVersion,
      String compiler,
      int bits,
      String? host,
      String kernelVersion,
      String? parameters});
}

/// @nodoc
class _$KernelCopyWithImpl<$Res> implements $KernelCopyWith<$Res> {
  _$KernelCopyWithImpl(this._value, this._then);

  final Kernel _value;
  // ignore: unused_field
  final $Res Function(Kernel) _then;

  @override
  $Res call({
    Object? compilerVersion = freezed,
    Object? compiler = freezed,
    Object? bits = freezed,
    Object? host = freezed,
    Object? kernelVersion = freezed,
    Object? parameters = freezed,
  }) {
    return _then(_value.copyWith(
      compilerVersion: compilerVersion == freezed
          ? _value.compilerVersion
          : compilerVersion // ignore: cast_nullable_to_non_nullable
              as String,
      compiler: compiler == freezed
          ? _value.compiler
          : compiler // ignore: cast_nullable_to_non_nullable
              as String,
      bits: bits == freezed
          ? _value.bits
          : bits // ignore: cast_nullable_to_non_nullable
              as int,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      kernelVersion: kernelVersion == freezed
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_KernelCopyWith<$Res> implements $KernelCopyWith<$Res> {
  factory _$$_KernelCopyWith(_$_Kernel value, $Res Function(_$_Kernel) then) =
      __$$_KernelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String compilerVersion,
      String compiler,
      int bits,
      String? host,
      String kernelVersion,
      String? parameters});
}

/// @nodoc
class __$$_KernelCopyWithImpl<$Res> extends _$KernelCopyWithImpl<$Res>
    implements _$$_KernelCopyWith<$Res> {
  __$$_KernelCopyWithImpl(_$_Kernel _value, $Res Function(_$_Kernel) _then)
      : super(_value, (v) => _then(v as _$_Kernel));

  @override
  _$_Kernel get _value => super._value as _$_Kernel;

  @override
  $Res call({
    Object? compilerVersion = freezed,
    Object? compiler = freezed,
    Object? bits = freezed,
    Object? host = freezed,
    Object? kernelVersion = freezed,
    Object? parameters = freezed,
  }) {
    return _then(_$_Kernel(
      compilerVersion: compilerVersion == freezed
          ? _value.compilerVersion
          : compilerVersion // ignore: cast_nullable_to_non_nullable
              as String,
      compiler: compiler == freezed
          ? _value.compiler
          : compiler // ignore: cast_nullable_to_non_nullable
              as String,
      bits: bits == freezed
          ? _value.bits
          : bits // ignore: cast_nullable_to_non_nullable
              as int,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      kernelVersion: kernelVersion == freezed
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Kernel extends _Kernel {
  _$_Kernel(
      {required this.compilerVersion,
      required this.compiler,
      required this.bits,
      this.host,
      required this.kernelVersion,
      required this.parameters})
      : super._();

  factory _$_Kernel.fromJson(Map<String, dynamic> json) =>
      _$$_KernelFromJson(json);

  @override
  final String compilerVersion;
  @override
  final String compiler;
  @override
  final int bits;
  @override
  final String? host;
  @override
  final String kernelVersion;
  @override
  final String? parameters;

  @override
  String toString() {
    return 'Kernel(compilerVersion: $compilerVersion, compiler: $compiler, bits: $bits, host: $host, kernelVersion: $kernelVersion, parameters: $parameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Kernel &&
            const DeepCollectionEquality()
                .equals(other.compilerVersion, compilerVersion) &&
            const DeepCollectionEquality().equals(other.compiler, compiler) &&
            const DeepCollectionEquality().equals(other.bits, bits) &&
            const DeepCollectionEquality().equals(other.host, host) &&
            const DeepCollectionEquality()
                .equals(other.kernelVersion, kernelVersion) &&
            const DeepCollectionEquality()
                .equals(other.parameters, parameters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(compilerVersion),
      const DeepCollectionEquality().hash(compiler),
      const DeepCollectionEquality().hash(bits),
      const DeepCollectionEquality().hash(host),
      const DeepCollectionEquality().hash(kernelVersion),
      const DeepCollectionEquality().hash(parameters));

  @JsonKey(ignore: true)
  @override
  _$$_KernelCopyWith<_$_Kernel> get copyWith =>
      __$$_KernelCopyWithImpl<_$_Kernel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KernelToJson(
      this,
    );
  }
}

abstract class _Kernel extends Kernel {
  factory _Kernel(
      {required final String compilerVersion,
      required final String compiler,
      required final int bits,
      final String? host,
      required final String kernelVersion,
      required final String? parameters}) = _$_Kernel;
  _Kernel._() : super._();

  factory _Kernel.fromJson(Map<String, dynamic> json) = _$_Kernel.fromJson;

  @override
  String get compilerVersion;
  @override
  String get compiler;
  @override
  int get bits;
  @override
  String? get host;
  @override
  String get kernelVersion;
  @override
  String? get parameters;
  @override
  @JsonKey(ignore: true)
  _$$_KernelCopyWith<_$_Kernel> get copyWith =>
      throw _privateConstructorUsedError;
}

Environment _$EnvironmentFromJson(Map<String, dynamic> json) {
  return _Environment.fromJson(json);
}

/// @nodoc
mixin _$Environment {
  String get displayManager => throw _privateConstructorUsedError;
  String get console => throw _privateConstructorUsedError;
  String get windowManager => throw _privateConstructorUsedError;
  String get distro => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnvironmentCopyWith<Environment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentCopyWith<$Res> {
  factory $EnvironmentCopyWith(
          Environment value, $Res Function(Environment) then) =
      _$EnvironmentCopyWithImpl<$Res>;
  $Res call(
      {String displayManager,
      String console,
      String windowManager,
      String distro});
}

/// @nodoc
class _$EnvironmentCopyWithImpl<$Res> implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._value, this._then);

  final Environment _value;
  // ignore: unused_field
  final $Res Function(Environment) _then;

  @override
  $Res call({
    Object? displayManager = freezed,
    Object? console = freezed,
    Object? windowManager = freezed,
    Object? distro = freezed,
  }) {
    return _then(_value.copyWith(
      displayManager: displayManager == freezed
          ? _value.displayManager
          : displayManager // ignore: cast_nullable_to_non_nullable
              as String,
      console: console == freezed
          ? _value.console
          : console // ignore: cast_nullable_to_non_nullable
              as String,
      windowManager: windowManager == freezed
          ? _value.windowManager
          : windowManager // ignore: cast_nullable_to_non_nullable
              as String,
      distro: distro == freezed
          ? _value.distro
          : distro // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EnvironmentCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$_EnvironmentCopyWith(
          _$_Environment value, $Res Function(_$_Environment) then) =
      __$$_EnvironmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String displayManager,
      String console,
      String windowManager,
      String distro});
}

/// @nodoc
class __$$_EnvironmentCopyWithImpl<$Res> extends _$EnvironmentCopyWithImpl<$Res>
    implements _$$_EnvironmentCopyWith<$Res> {
  __$$_EnvironmentCopyWithImpl(
      _$_Environment _value, $Res Function(_$_Environment) _then)
      : super(_value, (v) => _then(v as _$_Environment));

  @override
  _$_Environment get _value => super._value as _$_Environment;

  @override
  $Res call({
    Object? displayManager = freezed,
    Object? console = freezed,
    Object? windowManager = freezed,
    Object? distro = freezed,
  }) {
    return _then(_$_Environment(
      displayManager: displayManager == freezed
          ? _value.displayManager
          : displayManager // ignore: cast_nullable_to_non_nullable
              as String,
      console: console == freezed
          ? _value.console
          : console // ignore: cast_nullable_to_non_nullable
              as String,
      windowManager: windowManager == freezed
          ? _value.windowManager
          : windowManager // ignore: cast_nullable_to_non_nullable
              as String,
      distro: distro == freezed
          ? _value.distro
          : distro // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Environment extends _Environment {
  _$_Environment(
      {required this.displayManager,
      required this.console,
      required this.windowManager,
      required this.distro})
      : super._();

  factory _$_Environment.fromJson(Map<String, dynamic> json) =>
      _$$_EnvironmentFromJson(json);

  @override
  final String displayManager;
  @override
  final String console;
  @override
  final String windowManager;
  @override
  final String distro;

  @override
  String toString() {
    return 'Environment(displayManager: $displayManager, console: $console, windowManager: $windowManager, distro: $distro)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Environment &&
            const DeepCollectionEquality()
                .equals(other.displayManager, displayManager) &&
            const DeepCollectionEquality().equals(other.console, console) &&
            const DeepCollectionEquality()
                .equals(other.windowManager, windowManager) &&
            const DeepCollectionEquality().equals(other.distro, distro));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(displayManager),
      const DeepCollectionEquality().hash(console),
      const DeepCollectionEquality().hash(windowManager),
      const DeepCollectionEquality().hash(distro));

  @JsonKey(ignore: true)
  @override
  _$$_EnvironmentCopyWith<_$_Environment> get copyWith =>
      __$$_EnvironmentCopyWithImpl<_$_Environment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EnvironmentToJson(
      this,
    );
  }
}

abstract class _Environment extends Environment {
  factory _Environment(
      {required final String displayManager,
      required final String console,
      required final String windowManager,
      required final String distro}) = _$_Environment;
  _Environment._() : super._();

  factory _Environment.fromJson(Map<String, dynamic> json) =
      _$_Environment.fromJson;

  @override
  String get displayManager;
  @override
  String get console;
  @override
  String get windowManager;
  @override
  String get distro;
  @override
  @JsonKey(ignore: true)
  _$$_EnvironmentCopyWith<_$_Environment> get copyWith =>
      throw _privateConstructorUsedError;
}
