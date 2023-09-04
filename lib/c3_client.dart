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

import 'package:device_tree_lib/archives/detarball_bridge.dart';
import 'package:device_tree_lib/c3/device_report/device_report.dart';
import 'package:device_tree_lib/checkbox/submission/submission.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class C3Credentials {
  final String username;
  final String apiKey;

  const C3Credentials({required this.username, required this.apiKey});
}

class NoSubmissionData implements Exception {}

Options _options({required C3Credentials credentials}) {
  return Options(
      responseType: ResponseType.bytes,
      contentType: "application/json; charset=utf8",
      headers: {
        "Authorization": "ApiKey ${credentials.username}:${credentials.apiKey}"
      });
}

Provider<C3Credentials> c3CredentialsProvider = Provider<C3Credentials>((_) =>
    const C3Credentials(
        username: String.fromEnvironment("C3_API_USERNAME"),
        apiKey: String.fromEnvironment("C3_API_KEY")));

final remoteReportProvider =
    FutureProviderFamily<DeviceReport, String>((ref, id) async {
  final credentials = ref.watch(c3CredentialsProvider);
  final dio = ref.watch(dioProvider);

  final report = await dio.get(
      'https://certification.canonical.com/api/v1/reports/summary/$id/?format=json',
      options: _options(credentials: credentials));

  return DeviceReport.fromJson(report.data);
});

class SubmissionParams {
  final String hardwareID;
  final String submissionID;

  const SubmissionParams(
      {required this.hardwareID, required this.submissionID});
}

final dioProvider = Provider((ref) {
  final dio = Dio();
  return dio;
});

final remoteSubmissionProvider =
    FutureProviderFamily<Submission, SubmissionParams>((ref, params) async {
  final credentials = ref.watch(c3CredentialsProvider);
  final dio = ref.watch(dioProvider);

  // TODO: Remove this web build specific faking once c3 accepts CORS.
  if (kIsWeb) {
    final response = await dio.get(
        'http://127.0.0.1:8000/rust/test/fixture/submission.tar.xz',
        options: Options(responseType: ResponseType.bytes));

    final responseData = response.data;

    if (responseData == null) {
      throw NoSubmissionData();
    }

    return submission(fromBytes: responseData);
  } else {
    final response = await dio.get(
        'https://certification.canonical.com/api/v1/reports/summary/${params.submissionID}/download?format=tar',
        options: _options(credentials: credentials));

    final responseData = response.data;
    return submission(fromBytes: responseData);
  }
});
