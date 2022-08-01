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

import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:test/test.dart';
import 'dart:convert';
import 'dart:io';

File report = File('./test/fixture/inxi-athena.json');
late final Map<String, dynamic> parsedReport;
void main() {
  setUpAll(
      (() async => parsedReport = json.decode(await report.readAsString())));
  group('Device tree parser tests', () {
    final reporter =
        DeviceTreeParser.fromInxiReport("./test/fixture/inxi-athena.json");

    test('Test inxi report parsing', () {
      reporter.parse();
      // expect(reporter.reportPath, isTrue);
    });

    test('Device info parsing', () {
      const Map<String, dynamic> map = {
        "tool": "systemctl",
        "Uptime": "12h 29m",
        "Shell": "Sudo (sudo)",
        "clang": "14.0.0-1ubuntu1",
        "v": "5.1.16",
        "Compilers": "",
        "inxi": "3.3.13",
        "Processes": 999,
        "running-in": "run-inxi",
        "alt": "11",
        "Init": "systemd",
        "runlevel": "5",
        "gcc": "11.2.0",
        "default": "Bash",
        "wakeups": "8"
      };

      var deviceInfo = DeviceInfo.fromMap(map);
      expect(deviceInfo.tool, map["tool"]);
      expect(deviceInfo.uptime, map["Uptime"]);
      expect(deviceInfo.shell, map["Shell"]);
      expect(deviceInfo.clangVersion, map["clang"]);
      expect(deviceInfo.version, map["v"]);
      expect(deviceInfo.inxiVersion, map["inxi"]);
      expect(deviceInfo.runLevel, int.parse(map["runlevel"]));
      expect(deviceInfo.initSystem, map["Init"]);
      expect(deviceInfo.gccVersion, map["gcc"]);
      expect(deviceInfo.defaultShell, map["default"]);
      expect(deviceInfo.wakeups, int.parse(map["wakeups"]));
    });
  });
}
