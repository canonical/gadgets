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
import 'dart:io';
import 'package:path/path.dart';
import 'package:device_tree_lib/device_tree.dart';

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
      print("Executing inxi failed:");
      print(error);
      print(stackTrace);
      dir.delete();
    });

    print(inxi.stdout);
    print(inxi.stderr);

    // :vomit:
    final cat = await Process.start('cat', [tempOutputPath], runInShell: false);

    // :vomit: :vomit:
    final perl = await Process.start(
            'perl', ['-pe', 's/[0-9]{3,3}\\#[0-9]\\#[0-9]#//g'],
            runInShell: true)
        .catchError((error) {
      print(error);
    });

    final jq = await Process.start('jq', [], runInShell: true);

    cat.stdout.pipe(perl.stdin).catchError((error) {
      print("inxi output -> cat error occurred:");
      print(error);
    });
    await perl.stdout.pipe(jq.stdin).catchError((error) {
      print("ANSI escape sequence removal failed:");
      print(error);
    });

    final tempOutputFile = File(tempOutputPath);
    final jqOutput = await jq.stdout.transform(utf8.decoder).first;

    final result = InxiExecutionResult(
        DeviceTree.fromJsonBlob(json.decode(jqOutput)),
        stdout: jqOutput);

    await tempOutputFile.delete();
    return result;
  }
}
