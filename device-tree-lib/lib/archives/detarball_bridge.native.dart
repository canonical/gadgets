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
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:detarball/detarball_bridge_generated.dart';

import '../checkbox/submission/submission.dart';

DynamicLibrary detarballLibrary() {
  const base = 'detarball';
  final path = Platform.isWindows ? '$base.dll' : 'lib$base.so';
  return Platform.isIOS
      ? DynamicLibrary.process()
      : Platform.isMacOS
          ? DynamicLibrary.executable()
          : Platform.isLinux
              ? DynamicLibrary.open(
                  'detarball/rust/target/release/libdetarball.so')
              : DynamicLibrary.open(path);
}

Future<Submission> submission({required List<int> fromBytes}) async {
  final lzmaData = Uint8List.fromList(fromBytes);
  final submissionData = await DetarballImpl(detarballLibrary())
      .decompressFromXzTarball(input: lzmaData, entrySuffix: "submission.json");

  return Submission.fromJson(json.decode(submissionData));
}

/*
Future<String> decompressFromXZTarballStream(
    Stream<Uint8List> lzmaStream, String filenameSuffix) async {
  final cat = await Process.start('cat', []);
  final tar = await Process.start('tar', ['-xO', 'submission.json']);
  final jq = await Process.start('jq', []);

  cat.stdin.addStream(lzmaStream);
  cat.stdout.pipe(tar.stdin);
  tar.stdout.pipe(jq.stdin);

  final out = await jq.stdout.transform(utf8.decoder).first;
  return out;
}*/

Future<String> decompressFromXZTarball(
    Uint8List lzmaData, String filenameSuffix) async {
  final xzcat = await Process.start('xzcat', []);
  final tar = await Process.start('tar', ['-xO', 'submission.json']);

  xzcat.stdin.add(List<int>.from(lzmaData));
  xzcat.stdout.pipe(tar.stdin);

  final output = await tar.stdout
      .transform(utf8.decoder)
      .map((str) => str)
      .fold<String>("", (prev, item) => prev + item);
  return output;
}
