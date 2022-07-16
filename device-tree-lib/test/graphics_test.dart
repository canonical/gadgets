import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:test/test.dart';

void main() {
  group('Test parsing graphics information out', () {
    test('Test parsing from Inxi report', () {
      final summary = GraphicsSummary.fromReport(reportMap);
      expect(summary.pciGraphicsDevices.length, 1);
      expect(summary.pciGraphicsDevices.first.active, "none");
      expect(summary.pciGraphicsDevices.first.alternativeDrivers,
          "nvidiafb,nouveau,nvidia_drm");
      expect(summary.pciGraphicsDevices.first.busID, "43:00.0");
      expect(summary.pciGraphicsDevices.first.chipID, "10de:2204");
      expect(summary.pciGraphicsDevices.first.classID, "0300");

      expect(summary.renderer?.directRender, true);
    });
  });
}

const reportMap = {
  "Graphics": [
    {
      "link-max": "",
      "alternate": "nvidiafb,nouveau,nvidia_drm",
      "active": "none",
      "off": "DP-1",
      "speed": "16 GT/s",
      "pcie": "",
      "empty": "DP-2,DP-3,HDMI-A-1",
      "driver": "nvidia",
      "bus-ID": "43:00.0",
      "gen": 4,
      "vendor": "Micro-Star MSI",
      "class-ID": "0300",
      "v": "510.73.05",
      "Device": "NVIDIA GA102 [GeForce RTX 3090]",
      "lanes": "16",
      "chip-ID": "10de:2204",
      "ports": ""
    },
    {
      "driver": "hid-generic,snd-usb-audio,usbhid,uvcvideo",
      "Device": "Logitech StreamCam",
      "chip-ID": "046d:0893",
      "bus-ID": "1-2:2",
      "serial": "A1071525",
      "class-ID": "0300",
      "type": "USB"
    },
    {
      "driver": "",
      "loaded": "nvidia",
      "v": "1.22.1.1",
      "screens": "1",
      "gpu": "nvidia",
      "X": "",
      "server": "X.Org",
      "Display": "",
      "unloaded": "fbdev,modesetting,nouveau,vesa",
      "display-ID": ":1",
      "compositor": "gnome-shell"
    },
    {
      "s-dpi": "96",
      "Screen": "0",
      "s-res": "3840x2160",
      "s-diag": "1165mm (45.9\")",
      "s-size": "1016x571mm (40.0x22.5\")"
    },
    {
      "res": "3840x2160",
      "dpi": "139",
      "Monitor": "XWAYLAND1",
      "size": "700x390mm (27.6x15.4\")",
      "hz": "60",
      "diag": "801mm (31.5\")"
    },
    {
      "direct render": "Yes",
      "renderer": "NVIDIA GeForce RTX 3090/PCIe/SSE2",
      "v": "4.6.0 NVIDIA 510.73.05",
      "OpenGL": ""
    }
  ]
};
