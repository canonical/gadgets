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
import 'package:device_tree_lib/inxi/usb/usb.dart';

main() {
  test('USB device info', () {
    const usbDeviceMaps = [
      {
        "rev": "2.0",
        "speed": "480 Mb/s",
        "chip-ID": "1d6b:0002",
        "Hub": "1-0:1",
        "info": "Hi-speed hub with single TT",
        "ports": "14",
        "class-ID": "0900"
      },
      {
        "info": "Logitech StreamCam",
        "class-ID": "0300",
        "type": "Video,Audio,HID",
        "serial": "A1071525",
        "chip-ID": "046d:0893",
        "speed": "480 Mb/s",
        "driver": "hid-generic,snd-usb-audio,usbhid,uvcvideo",
        "rev": "2.1",
        "interfaces": "6",
        "power": "500mA",
        "Device": "1-2:2"
      }
    ];

    var devices = usbDeviceMaps.map((m) => USBDevice.fromMap(m));
    expect(devices.length, 2);
  });
}
