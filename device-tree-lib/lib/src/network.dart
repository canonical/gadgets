class NetworkSummary {
  final Iterable<NetworkInterface> interfaces;

  NetworkSummary(this.interfaces);
}

class _InxiKeyNetwork {
  static const String busID = 'bus-ID';
  static const String version = 'v';
  static const String lanes = 'lanes';
  static const String device = 'Device';
  static const String vendor = 'vendor';
  static const String classID = 'class-ID';
  static const String gen = 'gen';
  static const String pcie = 'pcie';
  static const String driver = 'driver';
  static const String chipID = 'chip-ID';
  static const String port = 'port';
  static const String speed = 'speed';

  static const String state = 'state';
  static const String mac = 'mac';
  static const String interface = 'IF';
}

class NetworkDevice {
  final String busID;
  final String version;
  final String lanes;
  final String device;
  final String vendor;
  final String classID;
  final String gen;
  final String pcie;
  final String driver;
  final String chipID;
  final String port;
  final String speed;

  final NetworkInterface interface;

  NetworkDevice()
}

class NetworkInterface {

}
