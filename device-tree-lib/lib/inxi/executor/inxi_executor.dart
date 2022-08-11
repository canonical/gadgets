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

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart';
import 'package:device_tree_lib/device_tree.dart';
import 'package:logging/logging.dart';

class InxiExecutionResult {
  final DeviceTree deviceTree;
  final String stdout;

  InxiExecutionResult(this.deviceTree, {required this.stdout});
}

class InxiExecutor {
  Future<InxiExecutionResult> run() async {
    final dir = await Directory.systemTemp.createTemp('gadgets');
    final tempOutputPath = join(dir.path, "inxi-output.json");

    final inxi = await Process.run(
            'inxi',
            [
              '-c0',
              '-v8',
              '--tty',
              '--no-sudo',
              '--output',
              'json',
              '--output-file',
              tempOutputPath
            ],
            runInShell: true)
        .catchError((error, stackTrace) {
      Logger.root
          .severe("Executing inxi failed: $error\nStack trace:\n$stackTrace");
      dir.delete();
    });

    Logger.root.fine("inxi output: ${inxi.stdout}");
    Logger.root.fine(inxi.stdout);

    if (inxi.stderr != null &&
        inxi.stderr is String &&
        inxi.stderr.length > 0) {
      Logger.root.severe(inxi.stderr);
    }

    // :vomit:
    final cat = await Process.start('cat', [tempOutputPath], runInShell: false);

    // :vomit: :vomit:
    // this piping below is just replicating ./bin/run-inxi.sh
    final perl = await Process.start(
            '/usr/bin/perl', ['-pe', 's/[0-9]{3,3}\\#[0-9]\\#[0-9]#//g'],
            runInShell: false)
        .catchError((error) {
      print(error);
    });

    // . needed for reading from stdin
    // because jq in snapped builds is older than 1.5
    final jq = await Process.start('jq', ["."], runInShell: false);

    cat.stdout.pipe(perl.stdin).catchError((error) {
      print("inxi output -> cat error occurred:");
      print(error);
    });
    await perl.stdout.pipe(jq.stdin).catchError((error) {
      print("ANSI escape sequence removal failed:");
      print(error);
    });

    final tempOutputFile = File(tempOutputPath);

    final jqOutput = await jq.stdout
        .transform(utf8.decoder)
        .expand((element) => [element])
        .join("");

    final result = InxiExecutionResult(
        DeviceTree.fromJsonBlob(json.decode(jqOutput)),
        stdout: jqOutput);

    await tempOutputFile.delete();
    await dir.delete();
    return result;
  }
}

/* // Another way to read the stdout (and wait for predictably process to also have exit)
   // This was investigated because https://github.com/dart-lang/sdk/issues/31666
    final List<int> output = <int>[];
    final Completer<int> completer = Completer<int>();
    jq.stdout.listen((List<int> event) {
      output.addAll(event);
      stdout.add(event);
    }, onDone: () async => completer.complete(await jq.exitCode));

    final int exitCode = await completer.future;

    if (exitCode != 0) {
      stderr.write('Running inxi | perl | jq failed with $exitCode.\n');
    }

    final jqOutput = utf8.decoder.convert(output).trim();
    */