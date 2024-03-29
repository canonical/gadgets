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

const irisReportMap = {
  "Machine": [
    {
      "Type": "Laptop",
      "serial": "PF2RW27Y",
      "type": 10,
      "Chassis": "",
      "v": "Yoga Slim 7 Pro 14ACH5",
      "product": "82MS",
      "System": "LENOVO"
    },
    {
      "v": "SDK0T08861WIN",
      "Mobo": "LENOVO",
      "date": "06/08/2021",
      "model": "LNVNB161216",
      "UEFI": "LENOVO",
      "serial": "PF2RW27Y"
    }
  ]
};

const athenaReportMap = {
  "Machine": [
    {
      "UEFI": "American Megatrends",
      "v": "P3.90",
      "date": "12/04/2019",
      "model": "X399 Taichi",
      "serial": "N/A",
      "Mobo": "ASRock",
      "Type": "Desktop"
    }
  ]
};

void main() {
  group('Test parsing machine info out from Inxi JSON output', () {
    test('Test parsing Iris inxi report', () {
      final machine = MachineSummary.fromReport(reportMap: irisReportMap);
      expect(machine.oemInfo?.product, "82MS");
      expect(machine.oemInfo?.serial, "PF2RW27Y");
      expect(machine.oemInfo?.system, "LENOVO");
      expect(machine.oemInfo?.typeIdentifier, 10);
      expect(machine.oemInfo?.typeName, "Laptop");
      expect(machine.oemInfo?.version, "Yoga Slim 7 Pro 14ACH5");

      expect(machine.uefi.date, "06/08/2021");
      expect(machine.uefi.machineType, null);
      expect(machine.uefi.motherboardModel, "LNVNB161216");
      expect(machine.uefi.motherboardVendor, "LENOVO");
      expect(machine.uefi.version, "SDK0T08861WIN");
    });

    test('Test parsing Athena inxi report', () {
      final machine = MachineSummary.fromReport(reportMap: athenaReportMap);
      expect(machine.oemInfo, null);
      expect(machine.uefi.date, "12/04/2019");
      expect(machine.uefi.machineType, "Desktop");
      expect(machine.uefi.motherboardModel, "X399 Taichi");
      expect(machine.uefi.motherboardVendor, "ASRock");
      expect(machine.uefi.serial, "N/A");
      expect(machine.uefi.version, "P3.90");
    });
  });
}
