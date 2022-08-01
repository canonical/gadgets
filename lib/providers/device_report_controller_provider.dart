/*
 * Copyright (C) 2022 Canonical Ltd
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

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
