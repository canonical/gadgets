import 'dart:convert';
import 'dart:io';

import 'package:device_tree_lib/checkbox/submission/submission.dart';
import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// FIXME: Remove this faking.
File report = File(
    './device-tree-lib/test/fixture/submission_201908-27277_272935/submission.json');
final Map<String, dynamic> parsedSubmissionJson =
    json.decode(report.readAsStringSync());

final submission = Submission.fromJson(parsedSubmissionJson);

StateProvider<IMap<String, IList<Submission>>> submissionProvider =
    StateProvider((_) =>
        IMap<String, IList<Submission>>().add("CID X", [submission].toIList()));

final deviceCertificationStatusProvider =
    StateProvider.family<IList<Submission>?, String>(
        (ref, id) => ref.watch(submissionProvider)[id]);
