import 'package:device_tree_lib/src/checkbox/submission/submission.dart';
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
      expect(submission.architecture, 'armhf');
    });
  });
}
