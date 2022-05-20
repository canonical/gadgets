import 'dart:convert';
import 'dart:io';

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
