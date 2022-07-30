@JS()
library detarball;

import 'dart:convert';
import 'dart:typed_data';

import 'package:device_tree_lib/checkbox/submission/submission.dart';
import 'package:flutter/foundation.dart';
import 'package:js/js.dart';
import 'dart:js';
import 'dart:js_util' show promiseToFuture;

// Adapted from https://gpalma.pt/blog/flutter-web-web-assembly/

@JS('initDetarball')
external Promise<void> init();

@JS()
abstract class Promise<T> {
  external factory Promise(
      void executor(void resolve(T result), Function reject));
  external Promise then(void onFulfilled(T result), [Function onRejected]);
}

@JS('decompress_from_xz_tarball')
// ignore: non_constant_identifier_names
external String decompress_from_xz_tarball(
    Uint8List lzmaData, String filenameSuffix);

bool _isInitialized = false;

Future<void> ensureInitialized() async {
  if (!_isInitialized) {
    await promiseToFuture(init());
    _isInitialized = true;
  }
}

Future<String> decompressFromXZTarball(
    Uint8List lzmaData, String filenameSuffix) async {
  await ensureInitialized();
  return decompress_from_xz_tarball(lzmaData, filenameSuffix);
}

Future<Submission> submission({required List<int> fromBytes}) async {
  final lzmaData = Uint8List.fromList(fromBytes);
  final submissionData =
      await decompressFromXZTarball(lzmaData, "submission.json");

  return Submission.fromJson(json.decode(submissionData));
}
