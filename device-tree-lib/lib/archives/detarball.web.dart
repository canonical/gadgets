@JS()
library detarball;

import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:js/js.dart';
import 'package:js/js_util.dart' show promiseToFuture;

// Adapted from https://gpalma.pt/blog/flutter-web-web-assembly/

@JS('init')
external Promise<void> init(String wasmModulePath);

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
    await promiseToFuture(init('detarball_bg.wasm'));
    _isInitialized = true;
  }
}

Future<String> decompressFromXZTarball(
    Uint8List lzmaData, String filenameSuffix) async {
  await ensureInitialized();
  return decompress_from_xz_tarball(lzmaData, filenameSuffix);
}
