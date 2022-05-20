import 'package:device_tree_reporter_lib/device_tree_reporter_lib.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final reporter =
        DeviceTreeParser.fromInxiReport("./test/fixture/inxi-athena.json");

    setUp(() {
      // Additional setup goes here.
    });

    test('Test inxi report parsing', () {
      reporter.parse();
      // expect(reporter.reportPath, isTrue);
    });
  });
}
