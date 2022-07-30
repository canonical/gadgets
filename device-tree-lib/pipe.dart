#!/usr/bin/env dart

import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:typed_data';
import 'package:dio/dio.dart';

void main() async {
  /*
  await Process.run('inxi', [
    '-c0',
    '-v8',
    '--tty',
    '--no-sudo',
    '--output',
    'json',
    '--output-file',
    '/tmp/foo.json',
  ]);

  // :vomit:
  final cat = await Process.start('cat', ['/tmp/foo.json']);
  final perl =
      await Process.start('perl', ['-pe', 's/[0-9]{3,3}\\#[0-9]\\#[0-9]#//g']);
  final jq = await Process.start('jq', []);

  cat.stdout.pipe(perl.stdin);
  perl.stdout.pipe(jq.stdin);

  await jq.stdout.pipe(stdout);
  */

  final response = await Dio().get(
      'http://localhost:8000/submission_201908-27277_272935.tar.xz',
      options: Options(responseType: ResponseType.stream));

  final ResponseBody body = response.data;

  // final outList = List<int>.empty(growable: true);
  // await for (final chunk in body.stream) {
  //  outList.addAll(chunk);
  // }

  final tar =
      await Process.start('tar', ['-xO', 'submission.json'], runInShell: true);
  // final jq = await Process.start('jq', []);
  tar.stdin.addStream(body.stream);

  tar.stdout.listen(
      (event) {
        print(utf8.decode(event));
      },
      onDone: (() => print("DONE")),
      onError: (error) {
        print("ERROR");
        print(error);
      });
}
