import 'dart:html_common';

import 'package:device_tree_reporter_lib/device_tree_reporter_lib.dart';
import 'package:args/args.dart';
import 'package:test/expect.dart';

void main(List<String> argv) {
  final parser = ArgParser()..addCommand("report");
  ArgResults parsed = parser.parse(argv);

  if (parsed.command == "report") {
    for (var path in parsed.rest) {
      var deviceTree = DeviceTreeParser.fromInxiReport(path);
      deviceTree.parse();
    }
  }
}
