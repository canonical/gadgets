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

class InxiKeyMemoryCapacity {
  static final String total = 'total';
  static final String used = 'used';
  static final String ram = 'RAM'; // not sure what this is?
}

class InxiKeyMemorySlotSummary {
  static final String note = 'note';
  static final String maxModuleSize = 'max-module-size';
  static final String slots = 'slots';
  static final String ec = 'EC';
  static final String capacity = 'capacity';
  static final String array = 'Array'; // not really sure what this is?
}

class InxiKeyMemorySlot {
  static final String partNumber = 'part-no';
  static final String total = 'total';
  static final String device = 'Device';
  static final String busWidth = 'bus-width';
  static final String serial = 'serial';
  static final String size = 'size';
  static final String manufacturer = 'manufacturer';
  static final String speed = 'speed';
  static final String type = 'type';
  static final String detail = 'detail';
}
