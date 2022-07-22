// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SystemSummary _$$_SystemSummaryFromJson(Map<String, dynamic> json) =>
    _$_SystemSummary(
      kernel: Kernel.fromJson(json['kernel'] as Map<String, dynamic>),
      environment: json['environment'] == null
          ? null
          : Environment.fromJson(json['environment'] as Map<String, dynamic>),
      deviceTree: json['deviceTree'] == null
          ? null
          : DeviceTree.fromJson(json['deviceTree'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SystemSummaryToJson(_$_SystemSummary instance) =>
    <String, dynamic>{
      'kernel': instance.kernel.toJson(),
      'environment': instance.environment?.toJson(),
      'deviceTree': instance.deviceTree?.toJson(),
    };

_$_Kernel _$$_KernelFromJson(Map<String, dynamic> json) => _$_Kernel(
      compilerVersion: json['compilerVersion'] as String,
      compiler: json['compiler'] as String,
      bits: json['bits'] as int,
      host: json['host'] as String,
      kernelVersion: json['kernelVersion'] as String,
      parameters: json['parameters'] as String?,
    );

Map<String, dynamic> _$$_KernelToJson(_$_Kernel instance) => <String, dynamic>{
      'compilerVersion': instance.compilerVersion,
      'compiler': instance.compiler,
      'bits': instance.bits,
      'host': instance.host,
      'kernelVersion': instance.kernelVersion,
      'parameters': instance.parameters,
    };

_$_Environment _$$_EnvironmentFromJson(Map<String, dynamic> json) =>
    _$_Environment(
      displayManager: json['displayManager'] as String,
      console: json['console'] as String,
      windowManager: json['windowManager'] as String,
      distro: json['distro'] as String,
    );

Map<String, dynamic> _$$_EnvironmentToJson(_$_Environment instance) =>
    <String, dynamic>{
      'displayManager': instance.displayManager,
      'console': instance.console,
      'windowManager': instance.windowManager,
      'distro': instance.distro,
    };
