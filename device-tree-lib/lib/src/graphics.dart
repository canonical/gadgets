class _InxiKeyGraphics {
  static const String linkMax = 'link-max';
  static const String alternativeDrivers = 'alternate';
  static const String active = 'active';
  static const String off = 'off';
  static const String speed = 'speed';
  static const String pcie = 'pcie';
  static const String empty = 'empty';
  static const String driver = 'driver';
  static const String busID = 'bus-ID';
  static const String generation = 'gen';
  static const String vendor = 'vendor';
  static const String classID = 'class-ID';
  static const String version = 'v';
  static const String name = 'Device';
  static const String lanes = 'lanes';
  static const String chipID = 'chip-ID';
  static const String ports = 'ports';
  static const String serial = 'serial';
  static const String type = 'type';

  static const String loaded = 'loaded';
  static const String screens = 'screens';
  static const String gpu = 'gpu';
  static const String x = 'X';
  static const String server = 'server';
  static const String display = 'display';
  static const String unloaded = 'unloaded';
  static const String displayID = 'display-ID';
  static const String compositor = 'compositor';

  static const String dpi = 's-dpi';
  static const String screen = 'Screen';
  static const String resolution = 's-res';
  static const String diagonal = 's-diag';
  static const String size = 's-size';

  static const String monitor = 'Monitor';
  static const String hz = 'hz';
  static const String diag = 'diag';

  static const String directRender = 'direct render';
  static const String renderer = 'renderer';
  static const String openGL = 'OpenGL';
}

class GraphicsSummary {
  // choosing not to call these 'GPU's since could also be video capture etc.
  final DisplayServer displayServer;
  final Iterable<PCIGraphicsDevice> pciGraphicsDevices;
  final Iterable<USBGraphicsDevice> usbGraphicsDevices;
  final Iterable<Screen> screens;
  final Iterable<Display> displays;
  final Iterable<DisplayRenderer> renderers;

  GraphicsSummary(this.pciGraphicsDevices, this.usbGraphicsDevices,
      this.displayServer, this.screens, this.displays, this.renderers);
}

class PCIGraphicsDevice {
  final String linkMax;
  final String alternativeDrivers;
  final String active;
  final String off;
  final String speed;
  final String pcie;
  final String empty;
  final String driver;
  final String busID;
  final String gen;
  final String vendor;
  final String classID;
  final String version;
  final String name;
  final int lanes;
  final String chipID;
  final String ports;

  PCIGraphicsDevice(
      this.linkMax,
      this.alternativeDrivers,
      this.active,
      this.off,
      this.speed,
      this.pcie,
      this.empty,
      this.driver,
      this.busID,
      this.gen,
      this.vendor,
      this.classID,
      this.version,
      this.name,
      this.lanes,
      this.chipID,
      this.ports);

  factory PCIGraphicsDevice.fromMap(Map<String, dynamic> map) {
    return PCIGraphicsDevice(
        map[_InxiKeyGraphics.linkMax]!,
        map[_InxiKeyGraphics.alternativeDrivers]!,
        map[_InxiKeyGraphics.active]!,
        map[_InxiKeyGraphics.off]!,
        map[_InxiKeyGraphics.speed]!,
        map[_InxiKeyGraphics.pcie]!,
        map[_InxiKeyGraphics.empty]!,
        map[_InxiKeyGraphics.driver]!,
        map[_InxiKeyGraphics.busID]!,
        map[_InxiKeyGraphics.generation]!,
        map[_InxiKeyGraphics.vendor]!,
        map[_InxiKeyGraphics.classID]!,
        map[_InxiKeyGraphics.version]!,
        map[_InxiKeyGraphics.name]!,
        int.parse(map[_InxiKeyGraphics.lanes]!),
        map[_InxiKeyGraphics.chipID]!,
        map[_InxiKeyGraphics.ports]!);
  }
}

class USBGraphicsDevice {
  final String driver;
  final String name;
  final String chipID;
  final String busID;
  final String serial;
  final String classID;
  final String type;

  USBGraphicsDevice(this.driver, this.name, this.chipID, this.busID,
      this.serial, this.classID, this.type);

  factory USBGraphicsDevice.fromMap(Map<String, dynamic> map) {
    return USBGraphicsDevice(
        map[_InxiKeyGraphics.driver]!,
        map[_InxiKeyGraphics.name]!,
        map[_InxiKeyGraphics.chipID]!,
        map[_InxiKeyGraphics.busID]!,
        map[_InxiKeyGraphics.serial]!,
        map[_InxiKeyGraphics.classID]!,
        map[_InxiKeyGraphics.type]!);
  }
}

class DisplayServer {
  final String driver;
  final String loaded;
  final String version;
  final String screens;
  final String gpu;
  final String X;
  final String server;
  final String name;
  final String display;
  final String unloaded;
  final String displayID;
  final String compositor;

  DisplayServer(
      this.driver,
      this.loaded,
      this.version,
      this.screens,
      this.gpu,
      this.X,
      this.server,
      this.name,
      this.display,
      this.unloaded,
      this.displayID,
      this.compositor);

  factory DisplayServer.fromMap(Map<String, dynamic> map) {
    return DisplayServer(
        map[_InxiKeyGraphics.driver]!,
        map[_InxiKeyGraphics.loaded]!,
        map[_InxiKeyGraphics.version]!,
        map[_InxiKeyGraphics.screens]!,
        map[_InxiKeyGraphics.gpu]!,
        map[_InxiKeyGraphics.x]!,
        map[_InxiKeyGraphics.server]!,
        map[_InxiKeyGraphics.name]!,
        map[_InxiKeyGraphics.display]!,
        map[_InxiKeyGraphics.unloaded]!,
        map[_InxiKeyGraphics.displayID]!,
        map[_InxiKeyGraphics.compositor]!);
  }
}

class Screen {
  final double dpi;
  final String screen;
  final String resolution;
  final String diagonal;
  final String size;

  Screen(this.dpi, this.screen, this.resolution, this.diagonal, this.size);

  factory Screen.fromMap(Map<String, dynamic> map) {
    return Screen(
        map[_InxiKeyGraphics.dpi]!,
        map[_InxiKeyGraphics.screen]!,
        map[_InxiKeyGraphics.resolution]!,
        map[_InxiKeyGraphics.diagonal]!,
        map[_InxiKeyGraphics.size]!);
  }
}

class Display {
  final String resolution;
  final double dpi;
  final String monitor;
  final String size;
  final int hz;
  final String diagonal;

  Display(this.resolution, this.dpi, this.monitor, this.size, this.hz,
      this.diagonal);

  factory Display.fromMap(Map<String, dynamic> map) {
    return Display(
        map[_InxiKeyGraphics.resolution]!,
        map[_InxiKeyGraphics.dpi]!,
        map[_InxiKeyGraphics.monitor]!,
        map[_InxiKeyGraphics.size]!,
        map[_InxiKeyGraphics.hz]!,
        map[_InxiKeyGraphics.diag]!);
  }
}

class DisplayRenderer {
  final bool directRender;
  final String renderer;
  final String version;
  final String openGL;

  DisplayRenderer(this.directRender, this.renderer, this.version, this.openGL);

  factory DisplayRenderer.fromMap(Map<String, dynamic> map) {
    return DisplayRenderer(
        map[_InxiKeyGraphics.directRender]! == 'Yes',
        map[_InxiKeyGraphics.renderer]!,
        map[_InxiKeyGraphics.version]!,
        map[_InxiKeyGraphics.openGL]!);
  }
}
