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
import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:unicons/unicons.dart';

part 'usb.freezed.dart';
part 'usb.g.dart';

class USBInxiKey {
  static final String revision = "rev";
  static final String speed = "speed";
  static final String chipID = "chip-ID";
  static final String hub = "hub";
  static final String info = "info";
  static final String ports = "ports";
  static final String classID = "class-ID";
  static final String type = "type";
  static final String serial = "serial";
  static final String driver = "driver";
  static final String interfaces = "interfaces";
  static final String power = "power";
  static final String name = "Device";
}

@freezed
class USBSummary with _$USBSummary implements TreeNodeRepresentable, WithIcon {
  const USBSummary._();

  factory USBSummary({required List<USBDevice> devices}) = _USBSummary;

  factory USBSummary.fromReport(Map<String, dynamic> report) {
    Iterable<Map<String, dynamic>> usbDeviceMaps =
        List<Map<String, dynamic>>.from(report["USB"]!);
    return USBSummary(
        devices: usbDeviceMaps.map((m) => USBDevice.fromMap(m)).toList());
  }

  factory USBSummary.fromJson(Map<String, dynamic> json) =>
      _$USBSummaryFromJson(json);

  static bool isDetectedIn({required Map<String, dynamic> report}) {
    if (!report.containsKey('USB')) {
      return false;
    }

    final rawUSB = report['USB'];
    if (rawUSB is! List) {
      return false;
    }

    // handling the following case:
    // {Missing: This feature requires one of these tools: usbdevs/usbconfig}
    return !(rawUSB.length == 1 &&
        rawUSB.any((element) => element['Missing'] != null));
  }

  @override
  TreeNode treeNodeRepresentation() => TreeNode(id: "USB", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() {
    List<USBDevice> devices = this.devices.toList();
    devices.sort(((a, b) => a.info.compareTo(b.info)));
    return devices;
  }

  @override
  get iconData => Icons.usb;
}

@freezed
class USBDevice with _$USBDevice implements TreeNodeRepresentable, WithIcon {
  const USBDevice._();

  factory USBDevice(
      {required String revision,
      required String speed,
      required String chipID,
      String? hub,
      required String info,
      int? ports,
      required String classID,
      String? type,
      String? serial,
      String? driver,
      String? interfaces,
      String? power,
      String? name}) = _USBDevice;

  factory USBDevice.fromMap(Map<String, dynamic> map) {
    var revision = map[USBInxiKey.revision] as String;
    var speed = map[USBInxiKey.speed] as String;
    var chipID = map[USBInxiKey.chipID] as String;
    var info = map[USBInxiKey.info] as String;

    int? ports = () {
      if (map[USBInxiKey.ports] is String) {
        var ports = map[USBInxiKey.ports] as String;
        return int.parse(ports);
      }
      return null;
    }();

    var classID = map[USBInxiKey.classID] as String;
    var hub = map[USBInxiKey.hub] as String?;
    var type = map[USBInxiKey.type] as String?;
    var serial = map[USBInxiKey.serial] as String?;
    var driver = map[USBInxiKey.driver] as String?;
    var interfaces = map[USBInxiKey.interfaces] as String?;
    var power = map[USBInxiKey.power] as String?;
    var name = map[USBInxiKey.name] as String?;

    return USBDevice(
        revision: revision,
        speed: speed,
        chipID: chipID,
        hub: hub,
        info: info,
        ports: ports,
        classID: classID,
        type: type,
        serial: serial,
        driver: driver,
        interfaces: interfaces,
        power: power,
        name: name);
  }

  factory USBDevice.fromJson(Map<String, dynamic> json) =>
      _$USBDeviceFromJson(json);

  @override
  TreeNode treeNodeRepresentation() {
    return TreeNode(
        id: info, data: this, label: "name: $info ($name), driver: $driver");
  }

  @override
  Iterable<TreeNodeRepresentable> children() {
    return [];
  }

  @override
  get iconData {
    if (hub != null && hub != "") {
      return Icons.hub;
    } else if ((driver ?? "").contains("uvcvideo")) {
      return UniconsLine.webcam;
    } else if ((driver ?? "").contains("btusb")) {
      return UniconsLine.bluetooth_b;
    } else if ((driver ?? "").contains("snd_hda_intel")) {
      return UniconsLine.record_audio;
    } else if ((type ?? "").contains("Keyboard")) {
      return UniconsLine.keyboard;
    } else if ((driver ?? "").contains("snd-usb-audio")) {
      return UniconsLine.microphone;
    }

    return Icons.usb;
  }
}
