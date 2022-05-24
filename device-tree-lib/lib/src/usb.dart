class USBInxiKey {
  static final String revision = "rev";
  static final String speed = "speed";
  static final String chipID = "chip-ID";
  static final String hub = "hub";
  static final String info = "info";
  static final String ports = "ports";
  static final String classID = "class-ID";
  static final String type = "type";
  static final String serial = "serial";
  static final String driver = "driver";
  static final String interfaces = "interfaces";
  static final String power = "power";
  static final String device = "Device";
}

class USBDevice {
  final String revision;
  final String speed;
  final String chipID;
  final String info;
  final int? ports;
  final String classID;

  final String? hub;
  final String? type;
  final String? serial;
  final String? driver;
  final String? interfaces;
  final String? power;
  final String? device;

  const USBDevice(
      this.revision,
      this.speed,
      this.chipID,
      this.hub,
      this.info,
      this.ports,
      this.classID,
      this.type,
      this.serial,
      this.driver,
      this.interfaces,
      this.power,
      this.device);

  factory USBDevice.fromMap(Map<String, dynamic> map) {
    var revision = map[USBInxiKey.revision] as String;
    var speed = map[USBInxiKey.speed] as String;
    var chipID = map[USBInxiKey.chipID] as String;
    var info = map[USBInxiKey.info] as String;

    int? ports = () {
      if (map[USBInxiKey.ports] is String) {
        var ports = map[USBInxiKey.ports] as String;
        return int.parse(ports);
      }
      return null;
    }();

    var classID = map[USBInxiKey.classID] as String;
    var hub = map[USBInxiKey.hub] as String?;
    var type = map[USBInxiKey.type] as String?;
    var serial = map[USBInxiKey.serial] as String?;
    var driver = map[USBInxiKey.driver] as String?;
    var interfaces = map[USBInxiKey.interfaces] as String?;
    var power = map[USBInxiKey.power] as String?;
    var device = map[USBInxiKey.device] as String?;

    return USBDevice(revision, speed, chipID, hub, info, ports, classID, type,
        serial, driver, interfaces, power, device);
  }
}
