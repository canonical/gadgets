import 'package:device_tree_lib/inxi/executor/inxi_executor.dart';
import 'package:test/test.dart';

void main() {
  group('Test the inxi executor', () {
    test('Test parsing JSON output', () async {
      final inxiExecutor = InxiExecutor();
      final result = await inxiExecutor.run();
      expect(result.deviceTree.audioSummary.pciAudioDevices.length, 0);
    });
  });
}
