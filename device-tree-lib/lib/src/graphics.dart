import 'dart:core';

import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

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
  static const String display = 'Display';
  static const String unloaded = 'unloaded';
  static const String displayID = 'display-ID';
  static const String compositor = 'compositor';

  static const String screenDPI = 's-dpi';
  static const String screen = 'Screen';
  static const String screenResolution = 's-res';
  static const String screenDiagonal = 's-diag';
  static const String screenSize = 's-size';

  static const String displayDPI = 'dpi';
  static const String displayResolution = "res";
  static const String displayDiagonal = "diag";
  static const String displaySize = "size";

  static const String monitor = 'Monitor';
  static const String hz = 'hz';
  static const String diag = 'diag';

  static const String directRender = 'direct render';
  static const String renderer = 'renderer';
  static const String openGL = 'OpenGL';
}

class GraphicsSummary implements TreeNodeRepresentable {
  // choosing not to call these 'GPU's since could also be video capture etc.
  final DisplayServer? displayServer;
  final DisplayRenderer? renderer;
  final Iterable<PCIGraphicsDevice> pciGraphicsDevices;
  final Iterable<USBGraphicsDevice> usbGraphicsDevices;
  final Iterable<Screen> screens;
  final Iterable<Display> displays;

  GraphicsSummary(this.pciGraphicsDevices, this.usbGraphicsDevices,
      this.displayServer, this.screens, this.displays, this.renderer);

  factory GraphicsSummary.fromReport(Map<String, dynamic> reportMap) {
    final entries =
        (reportMap['Graphics']! as List).cast<Map<String, dynamic>>();

    final pciDevices = entries
        .where(
            (element) => PCIGraphicsDevice.representsPCIGraphicsDevice(element))
        .map((element) => PCIGraphicsDevice.fromMap(element));
    final usbDevices = entries
        .where(
            (element) => USBGraphicsDevice.representsUSBGraphicsDevice(element))
        .map((element) => USBGraphicsDevice.fromMap(element));

    final displayServerDetected = entries
        .any((element) => DisplayServer.representsDisplayServer(element));
    final displayServer = displayServerDetected
        ? DisplayServer.fromMap(entries.firstWhere(
            (element) => DisplayServer.representsDisplayServer(element)))
        : null;

    final displayRendererDetected = entries
        .any((element) => DisplayRenderer.representsDisplayRenderer(element));
    final renderer = displayRendererDetected
        ? DisplayRenderer.fromMap(entries.firstWhere(
            (element) => DisplayRenderer.representsDisplayRenderer(element)))
        : null;

    final screens = entries
        .where((element) => Screen.representsScreen(element))
        .map((element) => Screen.fromMap(element));
    final displays = entries
        .where((element) => Display.representsDisplay(element))
        .map((element) => Display.fromMap(element));

    return GraphicsSummary(
        pciDevices, usbDevices, displayServer, screens, displays, renderer);
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: "Graphics", data: this);
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    Iterable<Iterable<TreeNodeRepresentable>> childList = [
      displayServer != null
          ? [displayServer!]
          : List<TreeNodeRepresentable>.empty(),
      pciGraphicsDevices,
      usbGraphicsDevices,
      screens,
      displays,
      renderer != null ? [renderer!] : List<TreeNodeRepresentable>.empty()
    ];
    return childList.expand((child) => child); // flatmap
  }
}

class PCIGraphicsDevice implements TreeNodeRepresentable {
  final String linkMax;
  final String? alternativeDrivers;
  final String active;
  final String? off;
  final String speed;
  final String pcie;
  final String empty;
  final String driver;
  final String busID;
  final int gen;
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
        map[_InxiKeyGraphics.linkMax],
        map[_InxiKeyGraphics.alternativeDrivers],
        map[_InxiKeyGraphics.active],
        map[_InxiKeyGraphics.off],
        map[_InxiKeyGraphics.speed],
        map[_InxiKeyGraphics.pcie],
        map[_InxiKeyGraphics.empty],
        map[_InxiKeyGraphics.driver],
        map[_InxiKeyGraphics.busID],
        map[_InxiKeyGraphics.generation],
        map[_InxiKeyGraphics.vendor],
        map[_InxiKeyGraphics.classID],
        map[_InxiKeyGraphics.version],
        map[_InxiKeyGraphics.name],
        int.parse(map[_InxiKeyGraphics.lanes]),
        map[_InxiKeyGraphics.chipID],
        map[_InxiKeyGraphics.ports]);
  }

  static bool representsPCIGraphicsDevice(Map<String, dynamic> map) {
    return map[_InxiKeyGraphics.lanes] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(id: name, data: this, label: "active:$active, $vendor");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}

class USBGraphicsDevice implements TreeNodeRepresentable {
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
        map[_InxiKeyGraphics.driver],
        map[_InxiKeyGraphics.name],
        map[_InxiKeyGraphics.chipID],
        map[_InxiKeyGraphics.busID],
        map[_InxiKeyGraphics.serial],
        map[_InxiKeyGraphics.classID],
        map[_InxiKeyGraphics.type]);
  }

  static bool representsUSBGraphicsDevice(Map<String, dynamic> map) {
    return map[_InxiKeyGraphics.serial] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: name, data: this, label: "type: $type (driver: $driver)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}

class DisplayServer implements TreeNodeRepresentable {
  final String driver;
  final String? loaded;
  final String version;
  final String screens;
  final String gpu;
  final String? X;
  final String server;
  final String display;
  final String? unloaded;
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
      this.display,
      this.unloaded,
      this.displayID,
      this.compositor);

  factory DisplayServer.fromMap(Map<String, dynamic> map) {
    return DisplayServer(
        map[_InxiKeyGraphics.driver]!,
        map[_InxiKeyGraphics.loaded],
        map[_InxiKeyGraphics.version]!,
        map[_InxiKeyGraphics.screens]!,
        map[_InxiKeyGraphics.gpu]!,
        map[_InxiKeyGraphics.x],
        map[_InxiKeyGraphics.server]!,
        map[_InxiKeyGraphics.display]!,
        map[_InxiKeyGraphics.unloaded],
        map[_InxiKeyGraphics.displayID]!,
        map[_InxiKeyGraphics.compositor]!);
  }

  static bool representsDisplayServer(Map<String, dynamic> map) {
    return map[_InxiKeyGraphics.compositor] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "Display server",
        data: this,
        label: "$server ($display, gpu: $gpu, compositor: $compositor)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}

class Screen implements TreeNodeRepresentable {
  final double dpi;
  final int screen;
  final String resolution;
  final String diagonal;
  final String size;

  Screen(this.dpi, this.screen, this.resolution, this.diagonal, this.size);

  factory Screen.fromMap(Map<String, dynamic> map) {
    return Screen(
        double.parse(map[_InxiKeyGraphics.screenDPI]),
        int.parse(map[_InxiKeyGraphics.screen]),
        map[_InxiKeyGraphics.screenResolution]!,
        map[_InxiKeyGraphics.screenDiagonal]!,
        map[_InxiKeyGraphics.screenSize]!);
  }

  static bool representsScreen(Map<String, dynamic> map) {
    return map[_InxiKeyGraphics.screen] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "Screen $screen",
        data: this,
        label: "$resolution (dpi:$dpi, size: $size)");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}

class Display implements TreeNodeRepresentable {
  final String resolution;
  final double? dpi;
  final String monitor;
  final String size;
  final int hz;
  final String? diagonal;

  Display(this.resolution, this.dpi, this.monitor, this.size, this.hz,
      this.diagonal);

  factory Display.fromMap(Map<String, dynamic> map) {
    final rawDPI = map[_InxiKeyGraphics.displayDPI];
    return Display(
        map[_InxiKeyGraphics.displayResolution],
        rawDPI != null ? double.parse(rawDPI) : null,
        map[_InxiKeyGraphics.monitor],
        map[_InxiKeyGraphics.displaySize],
        int.parse(map[_InxiKeyGraphics.hz]),
        map[_InxiKeyGraphics.displayDiagonal]);
  }

  static bool representsDisplay(Map<String, dynamic> map) {
    return map[_InxiKeyGraphics.monitor] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: "Monitor $monitor",
        data: this,
        label: "resolution: $resolution ($hz), dpi: $dpi");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}

class DisplayRenderer implements TreeNodeRepresentable {
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

  static bool representsDisplayRenderer(Map<String, dynamic> map) {
    return map[_InxiKeyGraphics.renderer] != null;
  }

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: renderer,
        data: this,
        label:
            "direct render: $directRender, version: $version, OpenGL: $openGL");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }
}
