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

import 'dart:convert';
import 'dart:io' if (dart.library.html) 'dart:html';

import 'package:device_tree_lib/checkbox/submission/submission.dart';
import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// FIXME: Remove this faking.

Future<Submission> exampleSubmission() async {
  return Submission.fromJson(json.decode(await rootBundle.loadString(
      './device-tree-lib/test/fixture/submission_201908-27277_272935/submission.json')));
}

FutureProvider<IMap<String, IList<Submission>>> submissionProvider =
    FutureProvider((_) async {
  final submission = await exampleSubmission();
  return IMap<String, IList<Submission>>().add("X", [submission].toIList());
});

final deviceSubmissionProvider =
    FutureProviderFamily<IList<Submission>?, String>((ref, id) async {
  return IList<Submission>([await exampleSubmission()]);
});
