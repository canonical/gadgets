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

class NetworkSummary {
  final Iterable<NetworkInterface> interfaces;

  NetworkSummary(this.interfaces);
}

class _InxiKeyNetwork {
  static const String busID = 'bus-ID';
  static const String version = 'v';
  static const String lanes = 'lanes';
  static const String device = 'Device';
  static const String vendor = 'vendor';
  static const String classID = 'class-ID';
  static const String gen = 'gen';
  static const String pcie = 'pcie';
  static const String driver = 'driver';
  static const String chipID = 'chip-ID';
  static const String port = 'port';
  static const String speed = 'speed';

  static const String state = 'state';
  static const String mac = 'mac';
  static const String interface = 'IF';
}

class NetworkDevice {
  final String busID;
  final String version;
  final String lanes;
  final String device;
  final String vendor;
  final String classID;
  final String gen;
  final String pcie;
  final String driver;
  final String chipID;
  final String port;
  final String speed;

  final NetworkInterface interface;

  NetworkDevice(
      this.busID,
      this.version,
      this.lanes,
      this.device,
      this.vendor,
      this.classID,
      this.gen,
      this.pcie,
      this.driver,
      this.chipID,
      this.port,
      this.speed,
      this.interface);
}

class NetworkInterface {}
