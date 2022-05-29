class SystemSummary {
  final Kernel kernel;
  final Environment environment;

  SystemSummary(this.kernel, this.environment);

  factory SystemSummary.fromReport(
      Map<String, List<Map<String, dynamic>>> report) {
    final Map<String, dynamic> kernelMap = report['System']![0];
    final Map<String, dynamic> environmentMap = report['System']![1];

    return SystemSummary(
        Kernel.fromMap(kernelMap), Environment.fromMap(environmentMap));
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

class Kernel {
  final String compilerVersion;
  final String compiler;
  final int bits;
  final String host;
  final String kernelVersion;
  final String parameters;

  Kernel(this.compilerVersion, this.compiler, this.bits, this.host,
      this.kernelVersion, this.parameters);

  factory Kernel.fromMap(Map<String, dynamic> map) {
    return Kernel(
        map[_InxiKeyKernel.compilerVersion]!,
        map[_InxiKeyKernel.compiler]!,
        map[_InxiKeyKernel.bits]!,
        map[_InxiKeyKernel.host]!,
        map[_InxiKeyKernel.kernelVersion]!,
        map[_InxiKeyKernel.parameters]!);
  }
}

class Environment {
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
}
