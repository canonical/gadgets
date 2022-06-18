import 'package:collection/collection.dart';

class _InxiKeyMachine {
  static const String uefi = 'UEFI';
  static const String version = 'v';
  static const String date = 'date';
  static const String model = 'model';
  static const String serial = 'serial';
  static const String motherboard = 'Mobo';
  static const String typeName = 'Type';
  static const String typeIdentifier = 'type';
  static const String product = 'product';
  static const String chassis = 'Chassis';
  static const String system = 'System';
}

class OEMInfo {
  final String serial;
  final int typeIdentifier;
  final String typeName;
  final String version;
  final String product;
  final String system;
  final String chassis;

  OEMInfo(this.serial, this.typeIdentifier, this.typeName, this.version,
      this.product, this.system, this.chassis);

  factory OEMInfo.fromMap(Map<String, dynamic> map) {
    return OEMInfo(
        map[_InxiKeyMachine.serial]!,
        map[_InxiKeyMachine.typeIdentifier]!,
        map[_InxiKeyMachine.typeName]!,
        map[_InxiKeyMachine.version]!,
        map[_InxiKeyMachine.product]!,
        map[_InxiKeyMachine.system]!,
        map[_InxiKeyMachine.chassis]!);
  }

  static bool representsOEMInfo(Map<String, dynamic> map) {
    return map[_InxiKeyMachine.product] != null;
  }
}

class UEFI {
  final String uefi;
  final String version;
  final String date;
  final String motherboardModel;
  final String serial;
  final String motherboardVendor;
  final String? machineType;

  UEFI(this.uefi, this.version, this.date, this.motherboardModel, this.serial,
      this.motherboardVendor, this.machineType);

  factory UEFI.fromMap(Map<String, dynamic> map) {
    return UEFI(
        map[_InxiKeyMachine.uefi]!,
        map[_InxiKeyMachine.version]!,
        map[_InxiKeyMachine.date]!,
        map[_InxiKeyMachine.model]!,
        map[_InxiKeyMachine.serial]!,
        map[_InxiKeyMachine.motherboard]!,
        map[_InxiKeyMachine.typeName]);
  }

  static bool representsUEFI(Map<String, dynamic> map) {
    return map[_InxiKeyMachine.uefi] != null;
  }
}

class MachineSummary {
  final UEFI uefi;
  final OEMInfo? oemInfo;

  MachineSummary(this.uefi, this.oemInfo);

  factory MachineSummary.fromReport(
      Map<String, List<Map<String, dynamic>>> reportMap) {
    final machineEntries = reportMap['Machine']!;

    final oemInfoMapMaybe = machineEntries
        .firstWhereOrNull((element) => OEMInfo.representsOEMInfo(element));

    final uefi = UEFI.fromMap(
        machineEntries.firstWhere((element) => UEFI.representsUEFI(element)));

    return MachineSummary(uefi,
        oemInfoMapMaybe != null ? OEMInfo.fromMap(oemInfoMapMaybe) : null);
  }
}
