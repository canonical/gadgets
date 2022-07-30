import 'package:device_tree_lib/archives/detarball_bridge.dart';
import 'package:device_tree_lib/c3/device_report/device_report.dart';
import 'package:device_tree_lib/checkbox/submission/submission.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class C3Credentials {
  final String username;
  final String apiKey;

  const C3Credentials({required this.username, required this.apiKey});
}

class NoSubmissionData implements Exception {}

Provider<C3Credentials> c3CredentialsProvider = Provider<C3Credentials>((_) =>
    const C3Credentials(
        username: String.fromEnvironment("C3_API_USERNAME"),
        apiKey: String.fromEnvironment("C3_API_KEY")));

final remoteReportProvider =
    FutureProviderFamily<DeviceReport, String>((ref, id) async {
  final credentials = ref.watch(c3CredentialsProvider);

  final report = await Dio().get(
      'https://certification.canonical.com/api/v1/reports/summary/${id}/?format=json&username=${credentials.username}&api_key=${credentials.apiKey}');

  return DeviceReport.fromJson(report.data);
});

class SubmissionParams {
  final String hardwareID;
  final String submissionID;

  const SubmissionParams(
      {required this.hardwareID, required this.submissionID});
}

final remoteSubmissionProvider =
    FutureProviderFamily<Submission, SubmissionParams>((ref, params) async {
  final credentials = ref.watch(c3CredentialsProvider);

  // final response = await Dio().get(
  //    'https://certification.canonical.com/hardware/${params.hardwareID}/submission/${params.submissionID}/data/?username=${credentials.username}&api_key=${credentials.apiKey}',
  //    options: Options(responseType: ResponseType.bytes));

  /*
  final response = await Dio().get(
      'http://localhost:8000/submission_201908-27277_272935.tar.xz',
      options: Options(responseType: ResponseType.stream));

  final ResponseBody responseData = response.data;
  */

  final response = await Dio().get(
      'http://127.0.0.1:8000/rust/test/fixture/submission.tar.xz',
      options: Options(responseType: ResponseType.bytes));

  final responseData = response.data;

  if (responseData == null) {
    throw NoSubmissionData();
  }

  return submission(fromBytes: responseData);
  // return SubmissionArchive.submissionFromStream(responseData.stream);
});
