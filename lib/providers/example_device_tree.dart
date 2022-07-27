import 'package:device_tree_lib/device_tree_lib.dart';

DeviceTree exampleTree = DeviceTree.fromReport({
  "Swap": [
    {
      "swappiness": "60 (default)",
      "Kernel": "",
      "cache-pressure": "100 (default)"
    },
    {
      "dev": "/dev/dm-1",
      "mapped": "cryptoswap",
      "uuid": "756b1b91-abd8-4eaa-b14c-ec1e1c9d8a4b",
      "maj-min": "253:1",
      "type": "partition",
      "ID": "swap-1",
      "priority": "-2",
      "label": "cryptoswap",
      "size": "2 GiB",
      "used": "1.68 GiB (84.0%)"
    }
  ],
  "Unmounted": [
    {
      "size": "2 GiB",
      "label": "N/A",
      "fs": "N/A",
      "maj-min": "259:2",
      "uuid": "N/A",
      "ID": "/dev/nvme0n1p2"
    }
  ],
  "PCI Slots": [
    {
      "type": "x8 PCI Express x8 J10",
      "status": "Available",
      "Slot": "1",
      "length": "Short"
    },
    {
      "length": "Short",
      "Slot": "2",
      "status": "Available",
      "type": "x4 PCI Express x4 J79"
    },
    {
      "Slot": "N/A",
      "status": "Available",
      "length": "Short",
      "type": "x1 M.2 Socket 1-SD J92"
    },
    {
      "length": "Short",
      "status": "Available",
      "Slot": "N/A",
      "type": "x1 M.2 Socket 2 J90"
    },
    {
      "type": "x2 M.2 Socket 3 J19",
      "Slot": "N/A",
      "status": "Available",
      "length": "Short"
    },
    {
      "type": "x1 M.2 Socket 1-SD CON1",
      "length": "Short",
      "status": "Available",
      "Slot": "N/A"
    }
  ],
  "Logical": [
    {"Message": "No logical block device data found."},
    {
      "dm": "dm-0",
      "size": "484 MiB",
      "Device": "keystore-rpool",
      "maj-min": "253:0",
      "type": "LUKS"
    },
    {"Components": ""},
    {"size": "500 MiB", "maj-min": "230:0", "p-1": "zd0"}
  ],
  "Repos": [
    {"apt": 2072, "Packages": 2112, "snap": 33, "flatpak": 7, "lib": 1008},
    {"Active apt repos in": "/etc/apt/sources.list"},
    [
      "deb http://fi.archive.ubuntu.com/ubuntu/ jammy main restricted",
      "deb http://fi.archive.ubuntu.com/ubuntu/ jammy-updates main restricted",
      "deb http://fi.archive.ubuntu.com/ubuntu/ jammy universe",
      "deb http://fi.archive.ubuntu.com/ubuntu/ jammy-updates universe",
      "deb http://fi.archive.ubuntu.com/ubuntu/ jammy multiverse",
      "deb http://fi.archive.ubuntu.com/ubuntu/ jammy-updates multiverse",
      "deb http://fi.archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse",
      "deb http://security.ubuntu.com/ubuntu jammy-security main restricted",
      "deb http://security.ubuntu.com/ubuntu jammy-security universe",
      "deb http://security.ubuntu.com/ubuntu jammy-security multiverse"
    ],
    {
      "Active apt repos in":
          "/etc/apt/sources.list.d/archive_canonical_com_ubuntu.list"
    },
    ["deb http://archive.canonical.com/ubuntu impish partner"],
    {
      "Active apt repos in":
          "/etc/apt/sources.list.d/deb_nodesource_com_node_14_x.list"
    },
    [
      "deb [signed-by=/usr/share/keyrings/nodesource.asc] https://deb.nodesource.com/node_14.x impish main"
    ],
    {
      "Active apt repos in":
          "/etc/apt/sources.list.d/download_docker_com_linux_ubuntu.list"
    },
    [
      "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.asc] https://download.docker.com/linux/ubuntu impish stable"
    ],
    {"Active apt repos in": "/etc/apt/sources.list.d/github-cli.list"},
    [
      "deb [arch=amd64 signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main"
    ],
    {
      "Active apt repos in":
          "/etc/apt/sources.list.d/linux_packages_resilio_com_resilio_sync_deb.list"
    },
    [
      "deb [arch=amd64 signed-by=/usr/share/keyrings/resilio-sync.asc] https://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free"
    ],
    {
      "Active apt repos in":
          "/etc/apt/sources.list.d/packages_riot_im_debian.list"
    },
    [
      "deb [signed-by=/usr/share/keyrings/riot-im-archive-keyring.gpg] https://packages.riot.im/debian/ default main"
    ],
    {"Active apt repos in": "/etc/apt/sources.list.d/tailscale.list"},
    [
      "deb [signed-by=/usr/share/keyrings/tailscale-archive-keyring.gpg] https://pkgs.tailscale.com/stable/ubuntu jammy main"
    ]
  ],
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
  ],
  "Partition": [
    {
      "logical": "rpool/ROOT/ubuntu_5cuz9v",
      "raw-size": "N/A",
      "size": "838.37 GiB",
      "used": "5.58 GiB (0.7%)",
      "ID": "/",
      "fs": "zfs"
    },
    {
      "used": "247.1 MiB (22.5%)",
      "raw-size": "N/A",
      "logical": "bpool/BOOT/ubuntu_5cuz9v",
      "size": "1.07 GiB",
      "fs": "zfs",
      "ID": "/boot"
    },
    {
      "block-size": "512 B",
      "dev": "/dev/nvme0n1p1",
      "fs": "vfat",
      "ID": "/boot/efi",
      "uuid": "EF3B-C2F8",
      "used": "13.4 MiB (2.6%)",
      "size": "511 MiB (99.80%)",
      "raw-size": "512 MiB",
      "label": "N/A",
      "maj-min": "259:1"
    },
    {
      "used": "17.31 GiB (2.0%)",
      "raw-size": "N/A",
      "size": "850.1 GiB",
      "logical": "rpool/USERDATA/mz2_68k5fd",
      "fs": "zfs",
      "ID": "/home/mz2"
    },
    {
      "fs": "zfs",
      "ID": "/root",
      "used": "4 MiB (0.0%)",
      "raw-size": "N/A",
      "size": "832.8 GiB",
      "logical": "rpool/USERDATA/root_68k5fd"
    },
    {
      "mapped": "keystore-rpool",
      "raw-size": "484 MiB",
      "size": "437 MiB (90.29%)",
      "used": "28 KiB (0.0%)",
      "maj-min": "253:0",
      "uuid": "N/A",
      "dev": "/dev/dm-0",
      "block-size": "4096 B",
      "ID": "/run/keystore/rpool",
      "fs": "ext4",
      "label": "N/A"
    },
    {
      "fs": "zfs",
      "ID": "/srv",
      "used": "256 KiB (0.0%)",
      "size": "832.79 GiB",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/srv",
      "raw-size": "N/A"
    },
    {
      "fs": "zfs",
      "ID": "/usr/local",
      "used": "512 KiB (0.0%)",
      "size": "832.8 GiB",
      "raw-size": "N/A",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/usr/local"
    },
    {
      "used": "256 KiB (0.0%)",
      "raw-size": "N/A",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/var/games",
      "size": "832.79 GiB",
      "fs": "zfs",
      "ID": "/var/games"
    },
    {
      "used": "10.89 GiB (1.3%)",
      "raw-size": "N/A",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/var/lib",
      "size": "843.69 GiB",
      "fs": "zfs",
      "ID": "/var/lib"
    },
    {
      "raw-size": "N/A",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/var/lib/AccountsService",
      "size": "832.79 GiB",
      "used": "256 KiB (0.0%)",
      "ID": "/var/lib/AccountsService",
      "fs": "zfs"
    },
    {
      "ID": "/var/lib/NetworkManager",
      "fs": "zfs",
      "raw-size": "N/A",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/var/lib/NetworkManager",
      "size": "832.8 GiB",
      "used": "768 KiB (0.0%)"
    },
    {
      "raw-size": "N/A",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/var/lib/apt",
      "size": "832.88 GiB",
      "used": "84.1 MiB (0.0%)",
      "ID": "/var/lib/apt",
      "fs": "zfs"
    },
    {
      "fs": "zfs",
      "ID": "/var/lib/dpkg",
      "used": "69.6 MiB (0.0%)",
      "raw-size": "N/A",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/var/lib/dpkg",
      "size": "832.86 GiB"
    },
    {
      "fs": "zfs",
      "ID": "/var/log",
      "used": "117.1 MiB (0.0%)",
      "size": "832.91 GiB",
      "raw-size": "N/A",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/var/log"
    },
    {
      "fs": "zfs",
      "ID": "/var/mail",
      "used": "256 KiB (0.0%)",
      "raw-size": "N/A",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/var/mail",
      "size": "832.79 GiB"
    },
    {
      "used": "4.45 GiB (0.5%)",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/var/snap",
      "size": "837.24 GiB",
      "raw-size": "N/A",
      "fs": "zfs",
      "ID": "/var/snap"
    },
    {
      "used": "384 KiB (0.0%)",
      "raw-size": "N/A",
      "size": "832.79 GiB",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/var/spool",
      "fs": "zfs",
      "ID": "/var/spool"
    },
    {
      "used": "256 KiB (0.0%)",
      "raw-size": "N/A",
      "size": "832.79 GiB",
      "logical": "rpool/ROOT/ubuntu_5cuz9v/var/www",
      "fs": "zfs",
      "ID": "/var/www"
    }
  ],
  "Battery": [
    {
      "type": "Li-poly",
      "status": "Charging",
      "ID": "BAT0",
      "charge": "13.3 Wh (82.7%)",
      "cycles": "46",
      "condition": "58.6/61.0 Wh (96.0%)",
      "serial": "13167",
      "model": "Sunwoda L19D4PH3",
      "min": "15.4",
      "volts": "15.8"
    }
  ],
  "Info": [
    {
      "v": "1.9.9",
      "gcc": "11.2.0",
      "Shell": "Sudo (sudo)",
      "clang": "14.0.0-1ubuntu1",
      "Compilers": "",
      "inxi": "3.3.13",
      "Init": "systemd",
      "tool": "systemctl",
      "wakeups": "3",
      "running-in": "run-inxi",
      "Processes": 621,
      "alt": "11",
      "Uptime": "2d 12m",
      "runlevel": "5",
      "default": "Bash"
    }
  ],
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
  ],
  "Bluetooth": [
    {
      "class-ID": "e001",
      "serial": "000000000",
      "bus-ID": "3-4:2",
      "chip-ID": "0489:e0cd",
      "driver": "btusb",
      "v": "0.8",
      "type": "USB",
      "Device": "Foxconn / Hon Hai Wireless_Device"
    },
    {
      "ID": "hci0",
      "state": "down",
      "bt-service": "enabled,running",
      "Report": "hciconfig",
      "hardware": "no",
      "rfk-block": "",
      "rfk-id": "5",
      "software": "yes",
      "address": "B4:B5:B6:76:95:C2"
    },
    {
      "Info": "",
      "sco-mtu": "240:8",
      "acl-mtu": "1021:6",
      "link-mode": "peripheral accept",
      "link-policy": "rswitch sniff"
    }
  ],
  "Graphics": [
    {
      "gen": 4,
      "empty": "DP-1,DP-2",
      "speed": "8 GT/s",
      "bus-ID": "03:00.0",
      "chip-ID": "1002:1638",
      "driver": "amdgpu",
      "link-max": "",
      "Device": "AMD Cezanne",
      "pcie": "",
      "lanes": "16",
      "active": "eDP-1",
      "v": "kernel",
      "class-ID": "0300",
      "ports": "",
      "vendor": "Lenovo"
    },
    {
      "class-ID": "fe01",
      "driver": "uvcvideo",
      "bus-ID": "1-3:2",
      "serial": "0001",
      "chip-ID": "04f2:b6cb",
      "type": "USB",
      "Device": "Chicony Integrated Camera"
    },
    {
      "driver": "",
      "compositor": "gnome-shell",
      "display-ID": ":0",
      "v": "1.22.1.1",
      "note": " X driver n/a",
      "server": "X.Org",
      "gpu": "amdgpu",
      "screens": "1",
      "Display": ""
    },
    {
      "s-size": "762x476mm (30.0x18.7\")",
      "s-dpi": "96",
      "Screen": "0",
      "s-res": "2880x1800",
      "s-diag": "898mm (35.4\")"
    },
    {
      "min": "640x480",
      "ratio": "16:10",
      "Monitor": "XWAYLAND0",
      "built": 2020,
      "max": "2880x1800",
      "mapped": "eDP-1",
      "dpi": "244",
      "res": "2880x1800",
      "diag": "356mm (14\")",
      "size": "300x190mm (11.8x7.5\")",
      "gamma": 1.2,
      "modes": "",
      "hz": "90"
    },
    {
      "v": "4.6 Mesa 22.0.1",
      "renderer": "AMD RENOIR (LLVM 13.0.1 DRM 3.42 5.15.0-30-generic)",
      "direct render": "Yes",
      "OpenGL": ""
    }
  ],
  "CPU": [
    {
      "family": "0x19 (25)",
      "stepping": "0",
      "microcode": "0xA50000B",
      "model": "AMD Ryzen 9 5900HX with Radeon Graphics",
      "model-id": "0x50 (80)",
      "type": "MT MCP",
      "bits": 64,
      "arch": "Zen 3",
      "Info": "",
      "socket": "FP6"
    },
    {
      "tpc": 2,
      "L2": "4 MiB",
      "Topology": "",
      "threads": 16,
      "L1": "512 KiB",
      "smt": "enabled",
      "cores": 8,
      "cache": "",
      "cpus": "1",
      "L3": "16 MiB",
      "desc": "d-8x32 KiB; i-8x32 KiB"
    },
    {
      "14": 1200,
      "12": 1200,
      "10": 1200,
      "4": 1200,
      "min/max": "1200/4679",
      "2": 1200,
      "cores": "",
      "driver": "acpi-cpufreq",
      "8": 1200,
      "1": 1200,
      "avg": 1200,
      "6": 1200,
      "5": 1200,
      "13": 1200,
      "boost": "enabled",
      "ext-clock": "100 MHz",
      "governor": "schedutil",
      "16": 1200,
      "3": 1200,
      "11": 1200,
      "7": 1200,
      "Speed (MHz)": "",
      "volts": "1.2 V",
      "9": 1200,
      "bogomips": 105403,
      "15": 1200,
      "scaling": "",
      "base/boost": "3300/4650"
    },
    {
      "Flags":
          "3dnowprefetch abm adx aes aperfmperf apic arat avic avx avx2 bmi1 bmi2 bpext cat_l3 cdp_l3 clflush clflushopt clwb clzero cmov cmp_legacy constant_tsc cpb cpuid cqm cqm_llc cqm_mbm_local cqm_mbm_total cqm_occup_llc cr8_legacy cx16 cx8 de decodeassists erms extapic extd_apicid f16c flushbyasid fma fpu fsgsbase fsrm fxsr fxsr_opt ht hw_pstate ibpb ibrs ibs invpcid irperf lahf_lm lbrv lm mba mca mce misalignsse mmx mmxext monitor movbe msr mtrr mwaitx nonstop_tsc nopl npt nrip_save nx ospke osvw overflow_recov pae pat pausefilter pclmulqdq pdpe1gb perfctr_core perfctr_llc perfctr_nb pfthreshold pge pku pni popcnt pse pse36 rapl rdpid rdpru rdrand rdseed rdt_a rdtscp rep_good sep sha_ni skinit smap smca smep ssbd sse sse2 sse4_1 sse4_2 sse4a ssse3 stibp succor svm svm_lock syscall tce topoext tsc tsc_scale umip v_spec_ctrl v_vmsave_vmload vaes vgif vmcb_clean vme vmmcall vpclmulqdq wbnoinvd wdt xgetbv1 xsave xsavec xsaveerptr xsaveopt xsaves"
    },
    {"Vulnerabilities": ""},
    {"status": "Not affected", "Type": "itlb_multihit"},
    {"status": "Not affected", "Type": "l1tf"},
    {"Type": "mds", "status": "Not affected"},
    {"status": "Not affected", "Type": "meltdown"},
    {
      "Type": "spec_store_bypass",
      "mitigation": "Speculative Store Bypass disabled via prctl and seccomp"
    },
    {
      "Type": "spectre_v1",
      "mitigation": "usercopy/swapgs barriers and __user pointer sanitization"
    },
    {
      "Type": "spectre_v2",
      "mitigation":
          "Retpolines, IBPB: conditional, IBRS_FW, STIBP: always-on, RSB filling"
    },
    {"status": "Not affected", "Type": "srbds"},
    {"status": "Not affected", "Type": "tsx_async_abort"}
  ],
  "Memory": [
    {"total": "13.52 GiB", "used": "11.75 GiB (86.9%)", "RAM": ""},
    {
      "note": "est.",
      "EC": "None",
      "capacity": "16 GiB",
      "max-module-size": "8 GiB",
      "Array": "",
      "slots": 2
    },
    {
      "total": "64 bits",
      "Device": "DIMM 0",
      "size": "8 GiB",
      "serial": "N/A",
      "speed": "3200 MT/s",
      "type": "DDR4",
      "detail": "synchronous unbuffered (unregistered)",
      "manufacturer": "Hynix",
      "part-no": "HMAA1GS6CMR6N-XN",
      "bus-width": "64 bits"
    },
    {
      "manufacturer": "Hynix",
      "part-no": "HMAA1GS6CMR6N-XN",
      "bus-width": "64 bits",
      "detail": "synchronous unbuffered (unregistered)",
      "speed": "3200 MT/s",
      "serial": "N/A",
      "type": "DDR4",
      "total": "64 bits",
      "Device": "DIMM 0",
      "size": "8 GiB"
    }
  ],
  "Drives": [
    {
      "total": "",
      "used": "40.44 GiB (2.2%)",
      "Local Storage": "",
      "raw": "953.87 GiB",
      "usable": "1.83 TiB"
    },
    {
      "SMART Message":
          "Required tool smartctl not installed. Check --recommends"
    },
    {
      "rev": "41010C22",
      "type": "SSD",
      "logical": "512 B",
      "lanes": 4,
      "serial": "KJA8N502412608B6J",
      "temp": "41.9 C",
      "vendor": "SK Hynix",
      "physical": "512 B",
      "size": "953.87 GiB",
      "block-size": "",
      "model": "HFS001TDE9X084N",
      "maj-min": "259:0",
      "ID": "/dev/nvme0n1",
      "scheme": "GPT",
      "speed": "31.6 Gb/s"
    },
    {"Message": "No optical or floppy data found."}
  ],
  "System": [
    {
      "compiler": "gcc",
      "parameters":
          "BOOT_IMAGE=/BOOT/ubuntu_5cuz9v@/vmlinuz-5.15.0-30-generic root=ZFS=rpool/ROOT/ubuntu_5cuz9v ro quiet splash vt.handoff=1",
      "bits": 64,
      "v": "11.2.0",
      "Host": "iris",
      "Kernel": "5.15.0-30-generic x86_64"
    },
    {
      "Distro": "Ubuntu 22.04 LTS (Jammy Jellyfish)",
      "Console": "pty pts/1",
      "DM": "GDM3 42.0",
      "wm": "gnome-shell"
    }
  ],
  "Network": [
    {
      "driver": "mt7921e",
      "chip-ID": "14c3:7961",
      "class-ID": "0280",
      "gen": 2,
      "bus-ID": "01:00.0",
      "vendor": "Lenovo",
      "speed": "5 GT/s",
      "v": "kernel",
      "lanes": "1",
      "pcie": "",
      "Device": "MEDIATEK MT7921 802.11ax PCI Express Wireless Network Adapter"
    },
    {"mac": "b4:b5:b6:76:95:c1", "state": "up", "IF": "wlp1s0"},
    {
      "scope": "global",
      "IP v4": "172.20.10.6/28",
      "broadcast": "172.20.10.15",
      "type": "dynamic noprefixroute"
    },
    {
      "scope": "link",
      "type": "noprefixroute",
      "IP v6": "fe80::7283:8cc4:f3f2:bd03/64"
    },
    {
      "mac": "ee:ee:ee:ee:ee:ee",
      "state": "up",
      "duplex": "full",
      "speed": "10000 Mbps",
      "IF-ID": "calib6be85634bd"
    },
    {"IF-ID": "docker0", "state": "down", "mac": "02:42:32:1b:8b:73"},
    {
      "IP v4": "172.17.0.1/16",
      "broadcast": "172.17.255.255",
      "scope": "global"
    },
    {
      "state": "up",
      "duplex": "unknown",
      "mac": "52:54:00:ed:67:e6",
      "speed": "10 Mbps",
      "IF-ID": "mpqemubr0"
    },
    {
      "broadcast": "10.245.51.255",
      "scope": "global",
      "IP v4": "10.245.51.1/24"
    },
    {"IP v6": "fe80::5054:ff:feed:67e6/64", "scope": "link"},
    {
      "duplex": "full",
      "mac": "N/A",
      "state": "unknown",
      "IF-ID": "tailscale0",
      "speed": "-1"
    },
    {"IP v4": "100.110.251.46/32", "scope": "global"},
    {"IP v6": "fd7a:115c:a1e0:ab12:4843:cd96:626e:fb2e/128", "scope": "global"},
    {
      "virtual": "stable-privacy",
      "IP v6": "fe80::4ffb:d2cb:27d8:3763/64",
      "scope": "link"
    },
    {
      "IF-ID": "tap-ece2a27c700",
      "speed": "10 Mbps",
      "duplex": "full",
      "mac": "72:2f:36:b2:9e:d6",
      "state": "up"
    },
    {"scope": "link", "IP v6": "fe80::702f:36ff:feb2:9ed6/64"},
    {"state": "down", "IF-ID": "virbr0", "mac": "52:54:00:86:20:21"},
    {
      "IP v4": "192.168.122.1/24",
      "scope": "global",
      "broadcast": "192.168.122.255"
    },
    {
      "state": "unknown",
      "speed": "-1",
      "IF-ID": "vxlan.calico",
      "mac": "66:3e:9a:fe:23:5a",
      "duplex": "full"
    },
    {"scope": "global", "IP v4": "10.1.202.128/32"},
    {"WAN IP": "86.114.213.247"}
  ],
  "Processes": [
    {"CPU top": "5 of 621"},
    {
      "command": "kubelite",
      "cpu": "13.7%",
      "mem": "322.7 MiB (2.3%)",
      "1": "",
      "pid": "500282"
    },
    {
      "command": "dart",
      "cpu": "11.0%",
      "mem": "327.1 MiB (2.3%)",
      "pid": "493993",
      "2": ""
    },
    {
      "3": "",
      "pid": "493552",
      "command": "code",
      "cpu": "10.6%",
      "mem": "182.3 MiB (1.3%)"
    },
    {
      "pid": "506326",
      "4": "",
      "mem": "87.5 MiB (0.6%)",
      "cpu": "10.5%",
      "command": "zsysd"
    },
    {
      "pid": "493634",
      "command": "code",
      "cpu": "8.5%",
      "5": "",
      "mem": "40.5 MiB (0.2%)"
    },
    {"Memory top": "5 of 621"},
    {
      "command": "qemu-system-x86_64",
      "pid": "497227",
      "cpu": "6.2%",
      "1": "",
      "mem": "565.4 MiB (4.0%)"
    },
    {
      "command": "dart",
      "cpu": "11.0%",
      "2": "",
      "pid": "493993",
      "mem": "327.1 MiB (2.3%)"
    },
    {
      "command": "kubelite",
      "pid": "500282",
      "cpu": "13.7%",
      "3": "",
      "mem": "322.7 MiB (2.3%)"
    },
    {
      "pid": "6579",
      "cpu": "0.3%",
      "4": "",
      "mem": "237.2 MiB (1.7%)",
      "command": "gnome-shell"
    },
    {
      "pid": "429426",
      "cpu": "4.2%",
      "mem": "190.6 MiB (1.3%)",
      "5": "",
      "command": "firefox"
    }
  ],
  "Audio": [
    {
      "speed": "16 GT/s",
      "vendor": "Lenovo",
      "pcie": "",
      "Device": "AMD Renoir Radeon High Definition Audio",
      "v": "kernel",
      "lanes": "16",
      "link-max": "",
      "driver": "snd_hda_intel",
      "gen": 4,
      "class-ID": "0403",
      "bus-ID": "03:00.1",
      "chip-ID": "1002:1637"
    },
    {
      "lanes": "16",
      "pcie": "",
      "Device": "AMD Raven/Raven2/FireFlight/Renoir Audio Processor",
      "vendor": "Lenovo",
      "speed": "16 GT/s",
      "alternate": "snd_pci_acp3x, snd_rn_pci_acp3x, snd_pci_acp5x",
      "bus-ID": "03:00.5",
      "chip-ID": "1022:15e2",
      "gen": 3,
      "class-ID": "0480",
      "link-max": "",
      "driver": "N/A"
    },
    {
      "Device": "AMD Family 17h HD Audio",
      "pcie": "",
      "lanes": "16",
      "v": "kernel",
      "speed": "16 GT/s",
      "vendor": "Lenovo",
      "gen": 4,
      "class-ID": "0403",
      "chip-ID": "1022:15e3",
      "bus-ID": "03:00.6",
      "driver": "snd_hda_intel",
      "link-max": ""
    },
    {"Sound Server": "ALSA", "v": "k5.15.0-30-generic", "running": "yes"},
    {"running": "yes", "Sound Server": "PulseAudio", "v": "15.99.1"},
    {"running": "yes", "v": "0.3.48", "Sound Server": "PipeWire"}
  ],
  "Sensors": [
    {
      "System Temperatures": "",
      "cpu": "N/A",
      "temp": "45.0 C",
      "gpu": "amdgpu",
      "mobo": "N/A"
    },
    {"Fan Speeds (RPM)": "N/A"}
  ],
  "USB": [
    {
      "chip-ID": "1d6b:0002",
      "class-ID": "0900",
      "rev": "2.0",
      "speed": "480 Mb/s",
      "info": "Hi-speed hub with single TT",
      "Hub": "1-0:1",
      "ports": "4"
    },
    {
      "type": "Video",
      "Device": "1-3:2",
      "class-ID": "fe01",
      "driver": "uvcvideo",
      "speed": "480 Mb/s",
      "chip-ID": "04f2:b6cb",
      "rev": "2.0",
      "serial": "0001",
      "power": "500mA",
      "info": "Chicony Integrated Camera",
      "interfaces": "5"
    },
    {
      "chip-ID": "1d6b:0003",
      "class-ID": "0900",
      "rev": "3.1",
      "speed": "10 Gb/s",
      "Hub": "2-0:1",
      "info": "Super-speed hub",
      "ports": "2"
    },
    {
      "speed": "480 Mb/s",
      "rev": "2.0",
      "class-ID": "0900",
      "chip-ID": "1d6b:0002",
      "ports": "4",
      "Hub": "3-0:1",
      "info": "Hi-speed hub with single TT"
    },
    {
      "power": "100mA",
      "info": "Foxconn / Hon Hai Wireless_Device",
      "speed": "480 Mb/s",
      "chip-ID": "0489:e0cd",
      "rev": "2.1",
      "serial": "000000000",
      "interfaces": "3",
      "type": "Bluetooth",
      "driver": "btusb",
      "Device": "3-4:2",
      "class-ID": "e001"
    },
    {
      "chip-ID": "1d6b:0003",
      "speed": "10 Gb/s",
      "class-ID": "0900",
      "rev": "3.1",
      "Hub": "4-0:1",
      "info": "Super-speed hub",
      "ports": "2"
    }
  ]
});
