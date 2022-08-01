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

import 'package:test/test.dart';
import 'package:device_tree_lib/device_tree_lib.dart';

const Map<String, List<Map<String, dynamic>>> reportMap = {
  "Partition": [
    {
      "maj-min": "253:0",
      "block-size": "4096 B",
      "dev": "/dev/dm-0",
      "raw-size": "929.59 GiB",
      "uuid": "N/A",
      "size": "913.92 GiB (98.31%)",
      "used": "765.78 GiB (83.8%)",
      "label": "N/A",
      "ID": "/",
      "fs": "ext4",
      "mapped": "nvme1n1p3_crypt"
    },
    {
      "maj-min": "259:6",
      "block-size": "4096 B",
      "dev": "/dev/nvme1n1p2",
      "raw-size": "977 MiB",
      "used": "461 MiB (48.9%)",
      "size": "943.2 MiB (96.54%)",
      "label": "N/A",
      "fs": "ext4",
      "uuid": "64eab53c-263e-4544-9c0b-55fbb3cfa872",
      "ID": "/boot"
    },
    {
      "uuid": "2212-7AFB",
      "ID": "/boot/efi",
      "fs": "vfat",
      "used": "32.2 MiB (33.6%)",
      "size": "96 MiB (96.00%)",
      "label": "N/A",
      "block-size": "512 B",
      "dev": "/dev/nvme0n1p1",
      "raw-size": "100 MiB",
      "maj-min": "259:1"
    }
  ]
};

void main() {
  group('Test partition info parsing', () {
    test('Parse partition info from Inxi report map', () {
      final partitions = Partition.fromReport(reportMap);
      final partition = partitions.first;
      expect(partitions.length, 3);

      expect(partition.majorMinor, '253:0');
      expect(partition.blockSize, '4096 B');
      expect(partition.device, '/dev/dm-0');
      expect(partition.rawSize, '929.59 GiB');
      expect(partition.uuid, 'N/A');
      expect(partition.size, '913.92 GiB (98.31%)');
      expect(partition.used, '765.78 GiB (83.8%)');
      expect(partition.label, 'N/A');
      expect(partition.id, '/');
      expect(partition.fs, 'ext4');
      expect(partition.mapped, 'nvme1n1p3_crypt');
    });

    test('Parse one partition from map', () {
      final map = {
        "maj-min": "253:0",
        "block-size": "4096 B",
        "dev": "/dev/dm-0",
        "raw-size": "929.59 GiB",
        "uuid": "N/A",
        "size": "913.92 GiB (98.31%)",
        "used": "765.78 GiB (83.8%)",
        "label": "N/A",
        "ID": "/",
        "fs": "ext4",
        "mapped": "nvme1n1p3_crypt"
      };
      final partition = Partition.fromMap(map);
      expect(partition.majorMinor, '253:0');
      expect(partition.blockSize, '4096 B');
      expect(partition.device, '/dev/dm-0');
      expect(partition.rawSize, '929.59 GiB');
      expect(partition.uuid, 'N/A');
      expect(partition.size, '913.92 GiB (98.31%)');
      expect(partition.used, '765.78 GiB (83.8%)');
      expect(partition.label, 'N/A');
      expect(partition.id, '/');
      expect(partition.fs, 'ext4');
      expect(partition.mapped, 'nvme1n1p3_crypt');
    });
  });
}
