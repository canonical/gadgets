import 'dart:convert';
import 'dart:io';

import 'package:device_tree_lib/device_tree.dart';
import 'package:device_tree_lib/inxi/executor/inxi_executor.dart';
import 'package:device_tree_lib/tree_node_representable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/providers/example_device_tree.dart';
import 'package:gadgets/providers/submission_provider.dart';
import '../device_report_controller.dart';
import 'package:meta/meta.dart';

const reportPath = String.fromEnvironment("INXI_REPORT_FILE");

final deviceReportControllerProvider = FutureProvider((_) async {
  // FIXME: Introduce a HTTP driven way to get a device report.
  if (kIsWeb) {
    return DeviceReportController(deviceTree: exampleTree);
  }
  if (reportPath != '') {
    final inputTree = DeviceTree.fromJsonBlob(
        json.decode(await File(reportPath).readAsString()));
    return DeviceReportController(deviceTree: inputTree);
  }
  final inputTree = (await InxiExecutor().run()).deviceTree;
  return DeviceReportController(deviceTree: inputTree);
});
