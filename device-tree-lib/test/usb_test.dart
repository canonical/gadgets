import 'package:test/test.dart';
import 'package:device_tree_lib/usb.dart';

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
