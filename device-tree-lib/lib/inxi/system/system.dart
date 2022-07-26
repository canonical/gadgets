import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unicons/unicons.dart';
import '../../presentation/detail_node.dart';
import 'package:collection/collection.dart';

part 'system.freezed.dart';
part 'system.g.dart';

@freezed
class SystemSummary
    with _$SystemSummary
    implements TreeNodeRepresentable, WithIcon {
  const SystemSummary._();

  factory SystemSummary(
      {required Kernel kernel,
      Environment? environment,
      DeviceTree? deviceTree}) = _SystemSummary;

  factory SystemSummary.fromReport(Map<String, dynamic> report) {
    final rawSystemEntries = report['System'] as List;
    final kernelMap = rawSystemEntries
        .firstWhere((element) => Kernel.isRepresentation(element));

    final environmentMap = rawSystemEntries
        .firstWhereOrNull((element) => Environment.isRepresentation(element));

    return SystemSummary(
        kernel: Kernel.fromMap(kernelMap),
        environment: environmentMap != null
            ? Environment.fromMap(environmentMap)
            : null);
  }

  factory SystemSummary.fromJson(Map<String, dynamic> json) =>
      _$SystemSummaryFromJson(json);

  @override
  TreeNode treeNodeRepresentation() =>
      TreeNode(id: "Operating System", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => [
        [Detail(parent: this, key: "Hostname", value: kernel.host)],
        [kernel],
        environment != null
            ? [environment!]
            : List<TreeNodeRepresentable>.empty()
      ].expand((element) => element);

  @override
  get iconData {
    if (environment?.distro != null) {
      return UniconsLine.linux;
    } else if (kernel.kernelVersion.contains("Darwin")) {
      return UniconsLine.apple;
    }
    return UniconsLine.browser;
  }
}

class _InxiKeyKernel {
  static const String compilerVersion = 'v';
  static const String compiler = 'compiler';
  static const String bits = 'bits';
  static const String host = 'Host';
  static const String kernelVersion = 'Kernel';
  static const String parameters = 'parameters';
}

class _InxiKeyEnvironment {
  static const String displayManager = 'DM';
  static const String console = 'Console';
  static const String windowManager = 'wm';
  static const String distro = 'Distro';
}

@freezed
class Kernel with _$Kernel implements TreeNodeRepresentable {
  const Kernel._();

  factory Kernel(
      {required String compilerVersion,
      required String compiler,
      required int bits,
      String? host,
      required String kernelVersion,
      required String? parameters}) = _Kernel;

  factory Kernel.fromMap(Map<String, dynamic> map) => Kernel(
      compilerVersion: map[_InxiKeyKernel.compilerVersion]!,
      compiler: map[_InxiKeyKernel.compiler]!,
      bits: map[_InxiKeyKernel.bits]!,
      host: map[_InxiKeyKernel.host],
      kernelVersion: map[_InxiKeyKernel.kernelVersion]!,
      parameters: map[_InxiKeyKernel.parameters]);

  factory Kernel.fromJson(Map<String, dynamic> json) => _$KernelFromJson(json);

  static bool isRepresentation(Map<String, dynamic> map) {
    return map['Kernel'] != null;
  }

  @override
  TreeNode treeNodeRepresentation() => TreeNode(
      id: "Kernel",
      data: this,
      label:
          "$kernelVersion ($bits, $compilerVersion), parameters: $parameters");

  @override
  Iterable<TreeNodeRepresentable> children() => [
        Detail(parent: this, key: "Machine name", value: host),
        Detail(
            parent: this, key: "Compiler", value: "$compiler $compilerVersion"),
        Detail(
            parent: this,
            key: "Kernel version",
            value: "$kernelVersion ($bits bits)"),
        Detail(parent: this, key: "Boot parameters", value: parameters)
      ];
}

@freezed
class Environment with _$Environment implements TreeNodeRepresentable {
  const Environment._();

  factory Environment(
      {required String displayManager,
      required String console,
      required String windowManager,
      required String distro}) = _Environment;

  factory Environment.fromMap(Map<String, dynamic> map) => Environment(
      displayManager: map[_InxiKeyEnvironment.displayManager]!,
      console: map[_InxiKeyEnvironment.console]!,
      windowManager: map[_InxiKeyEnvironment.windowManager]!,
      distro: map[_InxiKeyEnvironment.distro]!);

  factory Environment.fromJson(Map<String, dynamic> json) =>
      _$EnvironmentFromJson(json);

  static bool isRepresentation(Map<String, dynamic> map) {
    return map['Console'] != null && map['DM'] != null;
  }

  @override
  TreeNode treeNodeRepresentation() => TreeNode(id: "Environment", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() => [
        Detail(parent: this, key: "Distribution", value: distro),
        Detail(parent: this, key: "Login manager", value: displayManager),
        Detail(parent: this, key: "Window manager", value: windowManager),
        Detail(parent: this, key: "Console", value: console)
      ];
}
