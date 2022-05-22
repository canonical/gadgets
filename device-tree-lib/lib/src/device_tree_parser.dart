import 'dart:convert';
import 'dart:io';

import 'package:device_tree_lib/src/device_tree.dart';

class DeviceTreeParser {
  File report;

  DeviceTreeParser(this.report);

  factory DeviceTreeParser.fromInxiReport(String reportPath) {
    var file = File(reportPath);
    return DeviceTreeParser(file);
  }

  Future<DeviceTree> parse() async {
    final parsedReport = json.decode(await report.readAsString());
    return DeviceTree.fromReport(parsedReport);
  }
}
