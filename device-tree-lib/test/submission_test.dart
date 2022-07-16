import 'package:device_tree_lib/checkbox/submission/submission.dart';
import 'package:test/test.dart';
import 'dart:io';
import 'dart:convert';

File submission =
    File('./test/fixture/submission_201908-27277_272935/submission.json');
late final Map<String, dynamic> parsedSubmission;
void main() {
  setUpAll((() async =>
      parsedSubmission = json.decode(await submission.readAsString())));
  group('Test parsing Checkbox submission parsing', () {
    test('Test parsing submission_201908-27277_27293', () {
      final submission = Submission.fromJson(parsedSubmission);

      // some basic assertions done here, more meaningful roundtrip test below.
      expect(submission.architecture, 'armhf');
      expect(submission.attachmentResults?.length, 20);
      expect(submission.customJoblist, false);
      expect(submission.description,
          "Image test for core20-armhf -\nJenkins URL: http://10.102.156.15:8080/job/cert-cm3p-core20-armhf-image/274/");
      expect(submission.devices.length, 16);

      final serializedSubmission = submission.toJson();
      final deserializedSubmission = Submission.fromJson(serializedSubmission);

      final bool roundtripUnchanged = deserializedSubmission == submission;
      expect(roundtripUnchanged, true);
    });
  });
}
