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

import 'package:device_tree_lib/inxi/drive/drive_summary.dart';
import 'package:test/test.dart';

void main() {
  group('Test parsing drive information', () {
    test('Parse drive information from Inxi report', () {
      final summary = DriveSummary.fromReport(inxiReportMap);
      expect(summary.capacity.total, "3.64 TiB");
      expect(summary.capacity.used, "766.26 GiB (20.6%)");

      expect(summary.drives.length, 3);
      expect(summary.drives.first.id, '/dev/nvme0n1');
      expect(summary.drives.first.blockSize, '');
      expect(summary.drives.first.vendor, 'Western Digital');
      expect(summary.drives.first.serial, '210753463107');
      expect(summary.drives.first.type, 'SSD');
      expect(summary.drives.first.scheme, 'GPT');
      expect(summary.drives.first.speed, '31.6 Gb/s');
      expect(summary.drives.first.lanes, 4);
      expect(summary.drives.first.temperature, '53.9 C');
      expect(summary.drives.first.size, '931.51 GiB');
      expect(summary.drives.first.model, 'WDS100T3X0C-00SJG0');
      expect(summary.drives.first.rev, '111110WD');
      expect(summary.drives.first.logical, '512 B');
      expect(summary.drives.first.majorMinor, '259:0');
      expect(summary.drives.first.physical, '512 B');
    });
  });
}

const inxiReportMap = {
  "Drives": [
    {"total": "3.64 TiB", "Local Storage": "", "used": "766.26 GiB (20.6%)"},
    {
      "SMART Message":
          "Required tool smartctl not installed. Check --recommends"
    },
    {
      "ID": "/dev/nvme0n1",
      "block-size": "",
      "vendor": "Western Digital",
      "serial": "210753463107",
      "type": "SSD",
      "scheme": "GPT",
      "speed": "31.6 Gb/s",
      "lanes": 4,
      "temp": "53.9 C",
      "size": "931.51 GiB",
      "model": "WDS100T3X0C-00SJG0",
      "rev": "111110WD",
      "logical": "512 B",
      "maj-min": "259:0",
      "physical": "512 B"
    },
    {
      "lanes": 4,
      "temp": "55.9 C",
      "scheme": "GPT",
      "speed": "31.6 Gb/s",
      "rev": "2B2QEXM7",
      "physical": "512 B",
      "logical": "512 B",
      "maj-min": "259:4",
      "size": "931.51 GiB",
      "model": "SSD 970 EVO Plus 1TB",
      "ID": "/dev/nvme1n1",
      "vendor": "Samsung",
      "block-size": "",
      "type": "SSD",
      "serial": "S4EWNX0R133995B"
    },
    {
      "block-size": "",
      "vendor": "Crucial",
      "ID": "/dev/sda",
      "type": "SSD",
      "rev": "010",
      "speed": "6.0 Gb/s",
      "model": "CT2000MX500SSD1",
      "size": "1.82 TiB",
      "serial": "1803E10B33A2",
      "physical": "4096 B",
      "logical": "512 B",
      "maj-min": "8:0",
      "scheme": "GPT"
    },
    {"Message": "No optical or floppy data found."}
  ]
};
