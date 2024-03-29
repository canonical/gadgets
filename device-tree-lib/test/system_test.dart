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
  "System": [
    {
      "v": "11.2.0",
      "compiler": "gcc",
      "bits": 64,
      "Host": "athena",
      "Kernel": "5.15.0-33-generic x86_64",
      "parameters":
          "BOOT_IMAGE=/vmlinuz-5.15.0-33-generic root=UUID=1eb80bc1-3f78-48bd-a8f8-a7aa6e01c65b ro quiet splash rd.driver.blacklist=nouveau nvidia-drm.modeset=1 vt.handoff=7"
    },
    {
      "DM": "GDM3 42.0",
      "Console": "pty pts/3",
      "wm": "gnome-shell",
      "Distro": "Ubuntu 22.04 LTS (Jammy Jellyfish)"
    }
  ]
};

void main() {
  group('Test system summary parsing', () {
    test('Test parsing system summary from Inxi report', () {
      final summary = SystemSummary.fromReport(reportMap);
      expect(summary.kernel.compilerVersion, '11.2.0');
      expect(summary.kernel.compiler, 'gcc');
      expect(summary.kernel.bits, 64);
      expect(summary.kernel.host, 'athena');
      expect(summary.kernel.kernelVersion, '5.15.0-33-generic x86_64');
      expect(summary.kernel.parameters,
          'BOOT_IMAGE=/vmlinuz-5.15.0-33-generic root=UUID=1eb80bc1-3f78-48bd-a8f8-a7aa6e01c65b ro quiet splash rd.driver.blacklist=nouveau nvidia-drm.modeset=1 vt.handoff=7');

      expect(summary.environment?.displayManager, 'GDM3 42.0');
      expect(summary.environment?.console, 'pty pts/3');
      expect(summary.environment?.windowManager, 'gnome-shell');
      expect(summary.environment?.distro, 'Ubuntu 22.04 LTS (Jammy Jellyfish)');
    });
  });
}
