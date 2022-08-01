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

class DeviceTreeParser {
  File report;

  DeviceTreeParser(this.report);

  factory DeviceTreeParser.fromInxiReport(String reportPath) {
    var file = File(reportPath);
    return DeviceTreeParser(file);
  }

  Future<DeviceTree> parse() async {
    final parsedReport = json.decode(await report.readAsString());
    final deviceTree = DeviceTree.fromReport(parsedReport);
    return deviceTree.copyWith(machineSummary: deviceTree.machineSummary);
  }
}
