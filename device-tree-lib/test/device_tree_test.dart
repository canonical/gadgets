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

import 'dart:io';
import 'dart:core';
import 'package:test/test.dart';
import 'package:device_tree_lib/device_tree_lib.dart';

void main() {
  group('Test reading the whole device tree from Inxi report', () {
    test('Test reading the Athena inxi report', () async {
      final deviceTree =
          await DeviceTree.from(file: File('./test/fixture/inxi-athena.json'));
      expect(deviceTree.info.uptime, '12h 29m');
    });
  });
}
