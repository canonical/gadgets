import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';

Future<String> decompressFromXZTarballStream(
    Stream<Uint8List> lzmaStream, String filenameSuffix) async {
  final cat = await Process.start('cat', []);
  final tar = await Process.start('tar', ['-xO', 'submission.json']);
  final jq = await Process.start('jq', []);

  cat.stdin.addStream(lzmaStream);
  cat.stdout.pipe(tar.stdin);
  tar.stdout.pipe(jq.stdin);

  final out = await jq.stdout.transform(utf8.decoder).first;
  print(out);
  return out;
}

Future<String> decompressFromXZTarball(
    Uint8List lzmaData, String filenameSuffix) async {
  // final lzmaSha = sha1.convert(lzmaData);
  // print("input shasum: $lzmaSha");

  final xzcat = await Process.start('xzcat', []);
  final tar = await Process.start('tar', ['-xO', 'submission.json']);

  // print("about to execute");
  xzcat.stdin.add(List<int>.from(lzmaData));
  xzcat.stdout.pipe(tar.stdin);

  final output = await tar.stdout
      .transform(utf8.decoder)
      .map((str) => str)
      .fold<String>("", (prev, item) => prev + item);
  // print("printing output");
  // print(output);
  return output;
}
