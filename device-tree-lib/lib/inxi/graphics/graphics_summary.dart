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

import 'dart:core';

import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:device_tree_lib/inxi/graphics/display.dart';
import 'package:device_tree_lib/inxi/graphics/pci_graphics_device.dart';
import 'package:device_tree_lib/inxi/graphics/screen.dart';
import 'package:device_tree_lib/inxi/graphics/usb_graphics_device.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'display_server.dart';
import 'display_renderer.dart';

part 'graphics_summary.freezed.dart';
part 'graphics_summary.g.dart';

@freezed
class GraphicsSummary
    with _$GraphicsSummary
    implements TreeNodeRepresentable, WithIcon {
  const GraphicsSummary._();

  factory GraphicsSummary(
      {required List<PCIGraphicsDevice> pciGraphicsDevices,
      required List<USBGraphicsDevice> usbGraphicsDevices,
      DisplayServer? displayServer,
      required List<Screen> screens,
      required List<Display> displays,
      DisplayRenderer? renderer}) = _GraphicsSummary;

  factory GraphicsSummary.fromReport(Map<String, dynamic> reportMap) {
    final entries =
        (reportMap['Graphics']! as List).cast<Map<String, dynamic>>();

    final pciDevices = entries
        .where(
            (element) => PCIGraphicsDevice.representsPCIGraphicsDevice(element))
        .map((element) => PCIGraphicsDevice.fromMap(element))
        .toList();
    final usbDevices = entries
        .where(
            (element) => USBGraphicsDevice.representsUSBGraphicsDevice(element))
        .map((element) => USBGraphicsDevice.fromMap(element))
        .toList();

    final displayServerDetected = entries
        .any((element) => DisplayServer.representsDisplayServer(element));
    final displayServer = displayServerDetected
        ? DisplayServer.fromMap(entries.firstWhere(
            (element) => DisplayServer.representsDisplayServer(element)))
        : null;

    final displayRendererDetected = entries
        .any((element) => DisplayRenderer.representsDisplayRenderer(element));
    final renderer = displayRendererDetected
        ? DisplayRenderer.fromMap(entries.firstWhere(
            (element) => DisplayRenderer.representsDisplayRenderer(element)))
        : null;

    final screens = entries
        .where((element) => Screen.representsScreen(element))
        .map((element) => Screen.fromMap(element))
        .toList();
    final displays = entries
        .where((element) => Display.representsDisplay(element))
        .map((element) => Display.fromMap(element))
        .toList();

    return GraphicsSummary(
        pciGraphicsDevices: pciDevices,
        usbGraphicsDevices: usbDevices,
        displayServer: displayServer,
        screens: screens,
        displays: displays,
        renderer: renderer);
  }

  factory GraphicsSummary.fromJson(Map<String, dynamic> json) =>
      _$GraphicsSummaryFromJson(json);

  @override
  TreeNode treeNodeRepresentation() => TreeNode(id: "Graphics", data: this);

  @override
  Iterable<TreeNodeRepresentable> children() {
    Iterable<Iterable<TreeNodeRepresentable>> childList = [
      displayServer != null
          ? [displayServer!]
          : List<TreeNodeRepresentable>.empty(),
      pciGraphicsDevices,
      usbGraphicsDevices,
      screens,
      displays,
      renderer != null ? [renderer!] : List<TreeNodeRepresentable>.empty()
    ];
    return childList.expand((child) => child); // flatmap
  }

  @override
  get iconData => Icons.display_settings_rounded;
}
