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

final irisReport = {
  "Battery": [
    {
      "type": "Li-poly",
      "status": "Charging",
      "ID": "BAT0",
      "charge": "13.3 Wh (22.7%)",
      "cycles": "46",
      "condition": "58.6/61.0 Wh (96.0%)",
      "serial": "13167",
      "model": "Sunwoda L19D4PH3",
      "min": "15.4",
      "volts": "15.8"
    }
  ]
};

final athenaReport = {
  "Battery": [
    {
      "charge": "50% (should be ignored)",
      "model": "Logitech Wireless Mouse MX Master 3",
      "serial": "4082-b9-7b-a7-06",
      "rechargeable": "yes",
      "Device": "hidpp_battery_1",
      "status": "Discharging"
    }
  ]
};

final theiaReport = {
  "Battery": [
    {"Message": "No system battery data found. Is one present?"}
  ]
};

void main() {
  group('Test parsing battery information', () {
    test('Test parsing Iris report (i.e. a laptop with a battery)', () {
      final summary = BatterySummary.fromReport(irisReport);
      expect(summary.batteries.length, 1);
      final machineBattery = summary.batteries.first as MachineBattery;
      expect(machineBattery.model, "Sunwoda L19D4PH3");
      expect(machineBattery.serial, "13167");
      expect(machineBattery.status, "Charging");

      expect(machineBattery.charge, "13.3 Wh (22.7%)");
      expect(machineBattery.condition, "58.6/61.0 Wh (96.0%)");
      expect(machineBattery.cycles, 46);
      expect(machineBattery.id, "BAT0");
      expect(machineBattery.min, 15.4);
      expect(machineBattery.type, "Li-poly");
      expect(machineBattery.volts, 15.8);
    });

    test(
        'Test parsing Athena report (i.e. a desktop with battery powered mouse',
        () {
      final summary = BatterySummary.fromReport(athenaReport);
      expect(summary.batteries.length, 1);
      final peripheralBattery = summary.batteries.first as PeripheralBattery;
      expect(peripheralBattery.model, "Logitech Wireless Mouse MX Master 3");
      expect(peripheralBattery.serial, "4082-b9-7b-a7-06");
      expect(peripheralBattery.status, "Discharging");

      expect(peripheralBattery.charge, "50% (should be ignored)");
      expect(peripheralBattery.rechargeable, "yes");
      expect(peripheralBattery.device, "hidpp_battery_1");
    });

    test('Test parsing Theia report (i.e. a VM with no battery powered nothing',
        () {
      final summary = BatterySummary.fromReport(theiaReport);
      expect(summary.batteries.length, 1);
      expect(summary.batteries.first is NoBatteryDetected, true);
    }, tags: ['no-battery']);
  });
}
