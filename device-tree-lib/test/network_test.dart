import 'package:test/test.dart';

void main() {
  group('Test network interface gathering', () {
    test('Test parsing from Inxi report', () {});
  });
}

const networkMap = {
  "Network": [
    {
      "bus-ID": "04:00.0",
      "v": "kernel",
      "lanes": "1",
      "Device": "Intel I211 Gigabit Network",
      "vendor": "ASRock",
      "class-ID": "0200",
      "gen": 1,
      "pcie": "",
      "driver": "igb",
      "chip-ID": "8086:1539",
      "port": "2000",
      "speed": "2.5 GT/s"
    },
    {"state": "down", "mac": "70:85:c2:56:cb:0a", "IF": "enp4s0"},
    {
      "bus-ID": "05:00.0",
      "Device": "Intel Dual Band Wireless-AC 3168NGW [Stone Peak]",
      "driver": "iwlwifi",
      "lanes": "1",
      "gen": 1,
      "chip-ID": "8086:24fb",
      "class-ID": "0280",
      "speed": "2.5 GT/s",
      "pcie": "",
      "v": "kernel"
    },
    {"mac": "1c:4d:70:22:81:ca", "IF": "wlp5s0", "state": "down"},
    {
      "chip-ID": "8086:1539",
      "driver": "igb",
      "speed": "2.5 GT/s",
      "port": "1000",
      "pcie": "",
      "v": "kernel",
      "lanes": "1",
      "Device": "Intel I211 Gigabit Network",
      "gen": 1,
      "class-ID": "0200",
      "vendor": "ASRock",
      "bus-ID": "06:00.0"
    },
    {"IF": "enp6s0", "mac": "70:85:c2:56:cb:08", "state": "down"},
    {
      "class-ID": "0200",
      "port": "N/A",
      "pcie": "",
      "driver": "atlantic",
      "speed": "16 GT/s",
      "chip-ID": "1d6a:94c0",
      "gen": 3,
      "Device": "Aquantia",
      "lanes": "2",
      "v": "kernel",
      "vendor": "ASUSTeK",
      "bus-ID": "08:00.0",
      "link-max": ""
    },
    {
      "IF": "enp8s0",
      "duplex": "full",
      "speed": "10000 Mbps",
      "state": "up",
      "mac": "04:42:1a:57:cb:d3"
    },
    {
      "broadcast": "192.168.1.255",
      "type": "dynamic noprefixroute",
      "IP v4": "192.168.1.188/24",
      "scope": "global"
    },
    {
      "scope": "link",
      "type": "noprefixroute",
      "IP v6": "fe80::87c4:692e:b21d:7fd5/64"
    },
    {"state": "down", "IF-ID": "br-0c5012e696c1", "mac": "02:42:d8:76:b7:73"},
    {
      "IP v4": "172.18.0.1/16",
      "scope": "global",
      "broadcast": "172.18.255.255"
    },
    {"IF-ID": "br-9109f3df3cb6", "state": "down", "mac": "02:42:24:18:2a:d8"},
    {
      "IP v4": "192.168.208.1/20",
      "scope": "global",
      "broadcast": "192.168.223.255"
    },
    {
      "state": "up",
      "IF-ID": "br-fd761520d1ce",
      "speed": "10000 Mbps",
      "mac": "02:42:35:7e:65:7b",
      "duplex": "unknown"
    },
    {
      "broadcast": "192.168.207.255",
      "scope": "global",
      "IP v4": "192.168.192.1/20"
    },
    {"IP v6": "fe80::42:35ff:fe7e:657b/64", "scope": "link"},
    {
      "mac": "ee:ee:ee:ee:ee:ee",
      "duplex": "full",
      "IF-ID": "cali1d14864f3b9",
      "speed": "10000 Mbps",
      "state": "up"
    },
    {
      "mac": "ee:ee:ee:ee:ee:ee",
      "IF-ID": "cali3297253e049",
      "state": "up",
      "speed": "10000 Mbps",
      "duplex": "full"
    },
    {
      "state": "up",
      "speed": "10000 Mbps",
      "duplex": "full",
      "IF-ID": "cali3fd2bd64805",
      "mac": "ee:ee:ee:ee:ee:ee"
    },
    {
      "IF-ID": "cali4b6bbce5305",
      "state": "up",
      "duplex": "full",
      "mac": "ee:ee:ee:ee:ee:ee",
      "speed": "10000 Mbps"
    },
    {
      "IF-ID": "cali4c33097a526",
      "duplex": "full",
      "mac": "ee:ee:ee:ee:ee:ee",
      "speed": "10000 Mbps",
      "state": "up"
    },
    {
      "state": "up",
      "IF-ID": "cali5010610d18d",
      "speed": "10000 Mbps",
      "mac": "ee:ee:ee:ee:ee:ee",
      "duplex": "full"
    },
    {
      "speed": "10000 Mbps",
      "state": "up",
      "IF-ID": "cali7f2bc010594",
      "duplex": "full",
      "mac": "ee:ee:ee:ee:ee:ee"
    },
    {
      "IF-ID": "cali84d3abfdbe6",
      "state": "up",
      "mac": "ee:ee:ee:ee:ee:ee",
      "speed": "10000 Mbps",
      "duplex": "full"
    },
    {
      "IF-ID": "cali894ddb5f8c4",
      "duplex": "full",
      "mac": "ee:ee:ee:ee:ee:ee",
      "speed": "10000 Mbps",
      "state": "up"
    },
    {
      "duplex": "full",
      "speed": "10000 Mbps",
      "state": "up",
      "mac": "ee:ee:ee:ee:ee:ee",
      "IF-ID": "cali94f87897190"
    },
    {
      "IF-ID": "cali9553aece046",
      "duplex": "full",
      "mac": "ee:ee:ee:ee:ee:ee",
      "state": "up",
      "speed": "10000 Mbps"
    },
    {
      "state": "up",
      "IF-ID": "cali96c4f162491",
      "duplex": "full",
      "mac": "ee:ee:ee:ee:ee:ee",
      "speed": "10000 Mbps"
    },
    {
      "IF-ID": "caliaac47b72485",
      "duplex": "full",
      "mac": "ee:ee:ee:ee:ee:ee",
      "state": "up",
      "speed": "10000 Mbps"
    },
    {
      "IF-ID": "caliaf00e8de569",
      "mac": "ee:ee:ee:ee:ee:ee",
      "state": "up",
      "duplex": "full",
      "speed": "10000 Mbps"
    },
    {
      "mac": "ee:ee:ee:ee:ee:ee",
      "duplex": "full",
      "IF-ID": "calib0a7dd85fec",
      "state": "up",
      "speed": "10000 Mbps"
    },
    {
      "speed": "10000 Mbps",
      "duplex": "full",
      "mac": "ee:ee:ee:ee:ee:ee",
      "state": "up",
      "IF-ID": "calib5a09576898"
    },
    {
      "state": "up",
      "speed": "10000 Mbps",
      "mac": "ee:ee:ee:ee:ee:ee",
      "IF-ID": "calic767aa861c8",
      "duplex": "full"
    },
    {
      "duplex": "full",
      "speed": "10000 Mbps",
      "mac": "ee:ee:ee:ee:ee:ee",
      "IF-ID": "calica110d81cdb",
      "state": "up"
    },
    {
      "speed": "10000 Mbps",
      "state": "up",
      "duplex": "full",
      "IF-ID": "calid9a9e0588e8",
      "mac": "ee:ee:ee:ee:ee:ee"
    },
    {
      "IF-ID": "calie508867d6a8",
      "state": "up",
      "duplex": "full",
      "mac": "ee:ee:ee:ee:ee:ee",
      "speed": "10000 Mbps"
    },
    {"state": "down", "mac": "02:42:f2:f9:a1:a0", "IF-ID": "docker0"},
    {
      "IP v4": "172.17.0.1/16",
      "broadcast": "172.17.255.255",
      "scope": "global"
    },
    {"mac": "00:16:3e:00:00:00", "state": "down", "IF-ID": "lxcbr0"},
    {"broadcast": "10.0.3.255", "scope": "global", "IP v4": "10.0.3.1/24"},
    {
      "state": "up",
      "speed": "10000 Mbps",
      "duplex": "unknown",
      "IF-ID": "lxdbr0",
      "mac": "00:16:3e:a7:0f:50"
    },
    {"scope": "global", "IP v4": "10.233.220.1/24"},
    {"scope": "global", "IP v6": "fd42:2fc1:2371:d824::1/64"},
    {"IP v6": "fe80::216:3eff:fea7:f50/64", "scope": "link"},
    {
      "state": "up",
      "mac": "52:54:00:d3:3f:1f",
      "IF-ID": "mpqemubr0",
      "speed": "10 Mbps",
      "duplex": "unknown"
    },
    {
      "scope": "global",
      "broadcast": "10.44.147.255",
      "IP v4": "10.44.147.1/24"
    },
    {"IP v6": "fe80::5054:ff:fed3:3f1f/64", "scope": "link"},
    {
      "state": "up",
      "duplex": "full",
      "speed": "10 Mbps",
      "mac": "c2:44:38:ae:9c:e0",
      "IF-ID": "tap-ece2a27c700"
    },
    {"IP v6": "fe80::c044:38ff:feae:9ce0/64", "scope": "link"},
    {
      "speed": "10000 Mbps",
      "duplex": "full",
      "mac": "96:8b:58:4d:05:52",
      "state": "up",
      "IF-ID": "veth2e0b207"
    },
    {
      "duplex": "full",
      "speed": "10000 Mbps",
      "state": "up",
      "mac": "1a:e0:13:fa:db:25",
      "IF-ID": "veth3a651d3d"
    },
    {
      "speed": "10000 Mbps",
      "duplex": "full",
      "mac": "46:8a:ed:bf:4f:1d",
      "state": "up",
      "IF-ID": "veth3bd8e861"
    },
    {"state": "down", "mac": "52:54:00:61:a7:5b", "IF-ID": "virbr0"},
    {
      "broadcast": "192.168.122.255",
      "scope": "global",
      "IP v4": "192.168.122.1/24"
    },
    {
      "mac": "66:67:45:fa:af:ad",
      "state": "unknown",
      "IF-ID": "vxlan.calico",
      "speed": "-1",
      "duplex": "unknown"
    },
    {"IP v4": "10.1.92.128/32", "scope": "global"},
    {"scope": "link", "IP v6": "fe80::6467:45ff:fefa:afad/64"},
    {"WAN IP": "195.165.136.70"}
  ]
};
