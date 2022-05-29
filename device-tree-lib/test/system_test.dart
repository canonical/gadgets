import 'package:test/test.dart';

class SystemSummary {
  final Kernel kernel;
  final Environment environment;

  SystemSummary(this.kernel, this.environment);
}

class _InxiKeyKernel {
  static const String version = 'v';
  static const String compiler = 'compiler';
  static const String bits = 'bits';
  static const String host = 'Host';
  static const String kernel = 'Kernel';
  static const String parameters = 'parameter';
}

class _InxiKeyEnvironment {
  static const String displayManager = 'DM';
  static const String console = 'Console';
  static const String windowManager = 'wm';
  static const String distro = 'distro';
}

class Kernel {
  final String version;
  final String compiler;
  final String bits;
  final String host;
  final String kernel;
  final String parameters;

  Kernel(this.version, this.compiler, this.bits, this.host, this.kernel,
      this.parameters);

  factory Kernel.fromMap(Map<String, String> map) {
    return Kernel(
        map[_InxiKeyKernel.version]!,
        map[_InxiKeyKernel.compiler]!,
        map[_InxiKeyKernel.bits]!,
        map[_InxiKeyKernel.host]!,
        map[_InxiKeyKernel.kernel]!,
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

  factory Environment.fromMap(Map<String, String> map) {
    return Environment(
        map[_InxiKeyEnvironment.displayManager]!,
        map[_InxiKeyEnvironment.console]!,
        map[_InxiKeyEnvironment.windowManager]!,
        map[_InxiKeyEnvironment.distro]!);
  }
}

const Map<String, String> systemSummaryMap = {
  "System": {
    "v": "11.2.0",
    "compiler": "gcc",
    "bits": 64,
    "Host": "athena",
    "Kernel": "5.15.0-33-generic x86_64",
    "parameters":
        "BOOT_IMAGE=/vmlinuz-5.15.0-33-generic root=UUID=1eb80bc1-3f78-48bd-a8f8-a7aa6e01c65b ro quiet splash rd.driver.blacklist=nouveau nvidia-drm.modeset=1 vt.handoff=7"
  },
  {
    "DM": "GDM3 42.0",
    "Console": "pty pts/3",
    "wm": "gnome-shell",
    "Distro": "Ubuntu 22.04 LTS (Jammy Jellyfish)"
  }
};

void main() {
  group('Test system summary parsing', () {
    test('Test kernel info', () {});
  });
}
