import 'package:device_tree_lib/checkbox/submission/submission.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:device_tree_lib/checkbox/submission/result.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:unicons/unicons.dart';
import 'double_extensions.dart';

Map<String, IconData> _iconMap = {
  "skip": Icons.skip_next,
  "pass": Icons.check,
  "fail": UniconsLine.exclamation,
  "Audio tests": Icons.audiotrack_rounded,
  "Ethernet Device tests": UniconsLine.server_network,
  "USB tests": Icons.usb,
  "Location Service": Icons.location_pin,
  "Wireless Wide Area Network": Icons.wifi_tethering_outlined,
  "Bluetooth tests": Icons.bluetooth,
  "Camera tests": Icons.photo_camera_outlined,
  "CPU tests": UniconsLine.processor,
  "Uncategorised": Icons.question_mark,
  "Disk tests": Icons.storage,
  "Docker containers": UniconsLine.docker,
  "Firmware tests": Icons.security,
  "Informational tests": Icons.info_outline,
  "Power Management tests": Icons.energy_savings_leaf_outlined,
  "Memory tests": Icons.memory,
  "Non-device specific networking tests": UniconsLine.folder_network,
  "TPM 2.0 (Trusted Platform Module)": UniconsLine.padlock,
  "Miscellaneous tests": Icons.miscellaneous_services,
  "Snapd": UniconsLine.package,
  "Wireless networking tests": Icons.wifi,
  "I²C (Inter-Integrated Circuit)": Icons.factory_outlined,
  "SocketCAN interface tests": Icons.factory_outlined,
  "Suspend tests": Icons.power_settings_new,
};

enum ResultColumn {
  category("Category Name"),
  categoryID("Category ID"),
  name("Case"),
  status("Status"),
  outcome("Outcome"),
  certificationStatus("Required"),
  duration("Duration"),
  comments("Comments");

  final String columnName;
  const ResultColumn(this.columnName);

  dynamic value(Result result) {
    switch (this) {
      case name:
        return result.name;
      case comments:
        return result.comments;
      case category:
        return result.category;
      case categoryID:
        return result.categoryId;
      case certificationStatus:
        return result.certificationStatus;
      case status:
        return result.status;
      case outcome:
        return result.outcome;
      case duration:
        return result.duration;
    }
  }

  PlutoColumnType get type {
    switch (this) {
      case duration:
        return PlutoColumnType.number();
      case certificationStatus:
        return PlutoColumnType.select(
            ResultStatus.values.map((s) => s.status).toList());
      case outcome:
        return PlutoColumnType.select(
            ResultOutcome.values.map((o) => o.outcome).toList());
      default:
        return PlutoColumnType.text();
    }
  }

  String Function(dynamic value)? get formatter {
    switch (this) {
      case duration:
        return (dynamic value) {
          if (value is double) {
            return "${value.toPrecision(2)}s";
          }
          return "${value}s";
        };

      // case category:
      //  return (dynamic value) =>
      //      (value as String).replaceFirst(" (", "\n(").replaceAll("tests", "");

      case outcome:
        return (dynamic value) => ResultOutcome.presentedValue(value);

      case status:
        return (dynamic value) => ResultStatus.presentedValue(value);

      case certificationStatus:
        return (dynamic value) =>
            ResultCertificationStatus.presentedValue(value);

      case comments:
        return (dynamic value) {
          if (value == null) {
            return "";
          }
          return value;
        };

      default:
        return null;
    }
  }

  double get width {
    switch (this) {
      case category:
        return 265.0;
      case categoryID:
        return 260.0;
      case certificationStatus:
        return 100.0;
      case status:
        return 100.0;
      case outcome:
        return 120.0;
      case duration:
        return 110.0;
      default:
        return PlutoGridSettings.columnWidth;
    }
  }

  bool get hidden {
    switch (this) {
      case comments:
      case categoryID:
      case outcome:
      case certificationStatus:
        return true;

      default:
        return false;
    }
  }

  bool get hasTooltip {
    switch (this) {
      case name:
      case categoryID:
        return true;

      default:
        return false;
    }
  }

  static Iterable<PlutoColumn> plutoColumns = ResultColumn.values.map((c) {
    final column = PlutoColumn(
        hide: c.hidden,
        title: c.columnName,
        field: c.name,
        type: c.type,
        formatter: c.formatter,
        width: c.width,
        enableFilterMenuItem: true,
        enableRowChecked: false,
        renderer: (rendererContext) {
          Color? textColor;
          if (['unspecified', 'skip', 'not-supported']
              .contains(rendererContext.cell.value)) {
            textColor = Colors.grey;
          } else if (rendererContext.cell.value == 'pass') {
            textColor = Colors.green;
          } else if (rendererContext.cell.value == 'fail') {
            textColor = Colors.red;
          }

          final formatter = c.formatter;
          final message = formatter != null
              ? formatter(rendererContext.cell.value.toString())
              : rendererContext.cell.value.toString();

          final text = Tooltip(
              message: c.hasTooltip ? message : "",
              child: Text(
                message,
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                  fontWeight: (textColor != null) && (textColor != Colors.grey)
                      ? FontWeight.bold
                      : null,
                ),
              ));

          final iconData = _iconMap[rendererContext.cell.value];
          if (iconData != null) {
            return Row(children: [
              Icon(iconData, color: textColor),
              const SizedBox(width: 8),
              text
            ]);
          }

          return text;
        });
    column.setDefaultFilter(const PlutoFilterTypeEquals());
    column.cellPadding =
        const EdgeInsets.symmetric(vertical: 0, horizontal: 10);
    return column;
  });

  static Iterable<PlutoColumnGroup> plutoColumnGroups = [
    PlutoColumnGroup(
        title: "Category",
        fields: [ResultColumn.category.name, ResultColumn.categoryID.name]),
    PlutoColumnGroup(
        title: "Test Result",
        fields: [ResultColumn.status.name, ResultColumn.outcome.name])
  ];

  // FIXME: Put these back in the ResultColumn type.
  static Iterable<DataColumn> resultDataColumns = ResultColumn.values.map((c) {
    return DataColumn(
        label: Text(
      c.columnName,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ));
  });
}

extension Presentation on Result {
  PlutoRow toPlutoRow() {
    final columnMap = ResultColumn.values.fold<IMap<String, PlutoCell>>(
        IMap(),
        (dict, column) =>
            dict.add(column.name, PlutoCell(value: column.value(this))));

    return PlutoRow(cells: columnMap.unlock);
  }

  DataRow toDataRow() {
    return DataRow(
        cells: ResultColumn.values
            .map((column) => DataCell(Text(column.value(this).toString())))
            .toList());
  }
}
