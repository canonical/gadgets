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
    test('Bluetooth info from an inxi map', () async {
      final bluetoothSummary = BluetoothSummary.fromReport(parsedReport);
      expect(bluetoothSummary.chip.chipID, '8087:0aa7');
      expect(bluetoothSummary.chip.busID, '1-9:4');
      expect(bluetoothSummary.chip.driver, 'btusb');
      expect(bluetoothSummary.chip.version, '0.8');
      expect(bluetoothSummary.chip.device, 'Intel Wireless-AC 3168 Bluetooth');
      expect(bluetoothSummary.chip.type, 'USB');
      expect(bluetoothSummary.chip.classID, 'e001');

      expect(bluetoothSummary.link.aclMTU, '1021:4');
      expect(bluetoothSummary.link.info, '');
      expect(bluetoothSummary.link.linkMode, 'peripheral accept');
      expect(bluetoothSummary.link.linkPolicy, 'rswitch sniff');
      expect(bluetoothSummary.link.scoMTU, '96:6');

      expect(bluetoothSummary.service.address, '1C:4D:70:22:81:CE');
      expect(bluetoothSummary.service.bluetoothService, 'enabled,running');
      expect(bluetoothSummary.service.hardware, 'no');
      expect(bluetoothSummary.service.id, 'hci0');
      expect(bluetoothSummary.service.report, 'hciconfig');
      expect(bluetoothSummary.service.rfkBlock, '');
      expect(bluetoothSummary.service.rfkID, '0');
      expect(bluetoothSummary.service.software, 'yes');
      expect(bluetoothSummary.service.state, 'down');
    });
  });
}
