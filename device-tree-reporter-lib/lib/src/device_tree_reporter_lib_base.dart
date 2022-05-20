import 'dart:convert';
import 'dart:io';

class ReportNotFoundError implements Exception {}

class DeviceTree {
  DeviceTree.fromJson(Map<String, Array<Map<String, dynamic>> json) {
    
  }
}

class DeviceTreeParser {
  File report;

  DeviceTreeParser(this.report);

  factory DeviceTreeParser.fromInxiReport(String reportPath) {
    var file = File(reportPath);
    return DeviceTreeParser(file);
  }

  void parse() async {
    Object parsedReport = json.decode(await report.readAsString());
  }
}
