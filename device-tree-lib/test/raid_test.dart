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

import 'package:device_tree_lib/inxi/raid/raid.dart';
import 'package:test/test.dart';

const irisReport = {
  "RAID": [
    {
      "free": "980 MiB",
      "status": "ONLINE",
      "level": "linear",
      "zfs-fs": "",
      "Device": "bpool",
      "allocated": "940 MiB",
      "size": "1.88 GiB",
      "raw": "",
      "type": "zfs"
    },
    {"Online": "N/A", "Components": ""},
    {
      "level": "linear",
      "free": "862 GiB",
      "status": "ONLINE",
      "type": "zfs",
      "size": "944 GiB",
      "allocated": "81.5 GiB",
      "raw": "",
      "Device": "rpool",
      "zfs-fs": ""
    },
    {"Components": "", "Online": "N/A"}
  ]
};

const athenaReport = {
  "RAID": [
    {"Message": "No RAID data found."}
  ]
};

void main() {
  group('Test parsing RAID information out', () {
    test('Test parsing RAID info from Iris report', () {
      final raidSummary = RAIDSummary.fromReport(irisReport);
      expect(raidSummary.volumes.length, 2);
      expect(raidSummary.volumes.first.allocated, '940 MiB');
      expect(raidSummary.volumes.first.device, 'bpool');
      expect(raidSummary.volumes.first.free, '980 MiB');
      expect(raidSummary.volumes.first.level, 'linear');
      expect(raidSummary.volumes.first.size, '1.88 GiB');
      expect(raidSummary.volumes.first.status, 'ONLINE');
      expect(raidSummary.volumes.first.type, 'zfs');

      expect(raidSummary.volumes.last.allocated, '81.5 GiB');
      expect(raidSummary.volumes.last.device, 'rpool');
      expect(raidSummary.volumes.last.free, '862 GiB');
      expect(raidSummary.volumes.last.level, 'linear');
      expect(raidSummary.volumes.last.size, '944 GiB');
      expect(raidSummary.volumes.last.status, 'ONLINE');
      expect(raidSummary.volumes.last.type, 'zfs');
    });

    test('Test parsing RAID info from Athena report', () {
      final raidSummary = RAIDSummary.fromReport(athenaReport);
      expect(raidSummary.volumes.length, 0);
    });
  });
}
