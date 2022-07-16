import 'package:device_tree_lib/checkbox/submission/submission.dart';
import 'package:test/test.dart';
import 'dart:io';
import 'dart:convert';

File submissionFile =
    File('./test/fixture/submission_201908-27277_272935/submission.json');
late final Map<String, dynamic> submissionMap;
late final Submission submission;

void main() {
  setUpAll((() async {
    submissionMap = json.decode(await submissionFile.readAsString());
    submission = Submission.fromJson(submissionMap);
  }));
  group('Test parsing Checkbox submission parsing', () {
    test('Test parsing submission_201908-27277_27293', () {
      // some basic assertions done here (more meaningful roundtrip test below).
      expect(submission.architecture, 'armhf');
      expect(submission.attachmentResults?.length, 20);
      expect(submission.customJoblist, false);
      expect(submission.description,
          "Image test for core20-armhf -\nJenkins URL: http://10.102.156.15:8080/job/cert-cm3p-core20-armhf-image/274/");
      expect(submission.devices.length, 16);

      final serializedSubmission = submission.toJson();
      final deserializedSubmission = Submission.fromJson(serializedSubmission);

      // test that roundtripping data keeps the submission unchanged.
      final bool roundtripUnchanged = deserializedSubmission == submission;
      expect(roundtripUnchanged, true);
    });

    test('Test filtering submission results by category', () {
      final audioResults =
          results(submission: submission, category: KnownTestCategory.audio);
      expect(audioResults.map((result) => result.id), [
        'after-suspend-audio/alsa-loopback-automated',
        'after-suspend-audio/detect-capture-devices',
        'after-suspend-audio/detect-playback-devices',
        'audio/alsa-loopback-automated',
        'audio/detect-capture-devices',
        'audio/detect-playback-devices'
      ]);
    });
  });
}
