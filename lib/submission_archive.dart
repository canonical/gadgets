import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:device_tree_lib/archives/detarball.dart';
import 'package:device_tree_lib/checkbox/submission/submission.dart';
import 'dart:convert';

import 'package:crypto/crypto.dart';

import 'package:detarball/detarball_bridge_generated.dart';
import 'package:logging/logging.dart';

class NoSubmissionJsonFile implements Exception {}

class SubmissionArchive {
  static DynamicLibrary detarballLibrary() {
    final base = 'detarball';
    final path = Platform.isWindows ? '$base.dll' : 'lib$base.so';
    return Platform.isIOS
        ? DynamicLibrary.process()
        : Platform.isMacOS
            ? DynamicLibrary.executable()
            : Platform.isLinux ? 
            DynamicLibrary.open('detarball/rust/target/release/libdetarball.so')
            : DynamicLibrary.open(path);
  }

  static Future<Submission> submission({required List<int> fromBytes}) async {
    final lzmaData = Uint8List.fromList(fromBytes);
    final submissionData =
        await DetarballImpl(SubmissionArchive.detarballLibrary())
            .decompressFromXzTarball(
                input: lzmaData, entrySuffix: "submission.json");

    return Submission.fromJson(json.decode(submissionData));
    // final jsonString =
    //    await decompressFromXZTarball(lzmaData, "submission.json");
    // return Submission.fromJson(json.decode(jsonString));
    /*
    final xzDecoded = XZDecoder().decodeBytes(fromBytes);
    final archive = TarDecoder().decodeBytes(xzDecoded);
    final submissionJsonFile = archive.findFile("submission.json");
    if (submissionJsonFile == null) {
      throw NoSubmissionJsonFile();
    }

    return Submission.fromJson(submissionJsonFile.content);
    */
  }
}
