import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:unicons/unicons.dart';
import 'detail_node.dart';
import 'package:collection/collection.dart';

class SystemSummary implements TreeNodeRepresentable, WithIcon {
  final DeviceTree? deviceTree;
  final Kernel kernel;
  final Environment? environment;

  SystemSummary(
      {required this.kernel, required this.environment, this.deviceTree});

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

class Kernel implements TreeNodeRepresentable {
  final String compilerVersion;
  final String compiler;
  final int bits;
  final String host;
  final String kernelVersion;
  final String? parameters;

  Kernel(this.compilerVersion, this.compiler, this.bits, this.host,
      this.kernelVersion, this.parameters);

  factory Kernel.fromMap(Map<String, dynamic> map) {
    return Kernel(
        map[_InxiKeyKernel.compilerVersion]!,
        map[_InxiKeyKernel.compiler]!,
        map[_InxiKeyKernel.bits]!,
        map[_InxiKeyKernel.host]!,
        map[_InxiKeyKernel.kernelVersion]!,
        map[_InxiKeyKernel.parameters]);
  }

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

class Environment implements TreeNodeRepresentable {
  final String displayManager;
  final String console;
  final String windowManager;
  final String distro;

  Environment(
      this.displayManager, this.console, this.windowManager, this.distro);

  factory Environment.fromMap(Map<String, dynamic> map) {
    return Environment(
        map[_InxiKeyEnvironment.displayManager]!,
        map[_InxiKeyEnvironment.console]!,
        map[_InxiKeyEnvironment.windowManager]!,
        map[_InxiKeyEnvironment.distro]!);
  }

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