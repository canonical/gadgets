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
  group('Test Checkbox submission parsing', () {
    test(
        'Test parsing submission.json from uncompressed submission_201908-27277_27293',
        () {
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

/* // FIXME: Move this test to the app
    test('Test parsing submission.json from .tar.xz', () async {
      final bytes =
          await File('./test/fixture/submission_201908-27277_272935.tar.xz')
              .readAsBytes();
      final dearchivedSubmission =
          SubmissionArchive.submission(fromBytes: bytes);
      expect(dearchivedSubmission, equals(submission));
    });
    */

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
