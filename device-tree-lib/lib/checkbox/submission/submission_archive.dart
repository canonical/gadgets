import 'package:archive/archive.dart';
import 'package:device_tree_lib/archives/detarball.dart';
import 'package:device_tree_lib/checkbox/submission/submission.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert';

class NoSubmissionJsonFile implements Exception {}

class SubmissionArchive {
  static submission({required List<int> fromBytes}) async {
    final lzmaData = Uint8List.fromList(fromBytes);
    final jsonString =
        await decompressFromXZTarball(lzmaData, "submission.json");
    return Submission.fromJson(json.decode(jsonString));
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
