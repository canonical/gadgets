import 'dart:io';
import 'dart:core';
import 'package:test/test.dart';
import 'package:device_tree_lib/all.dart';

void main() {
  group('Test reading the whole device tree from Inxi report', () {
    test('Test reading the Athena inxi report', () async {
      final deviceTree =
          await DeviceTree.from(file: File('./test/fixture/inxi-athena.json'));
      expect(deviceTree.info.uptime, '12h 29m');
    });
  });
}
