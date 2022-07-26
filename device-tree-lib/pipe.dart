#!/usr/bin/env dart

import 'dart:io';

void main() async {
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
}
