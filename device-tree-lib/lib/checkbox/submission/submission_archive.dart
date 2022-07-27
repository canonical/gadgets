import 'package:archive/archive.dart';
import 'package:device_tree_lib/checkbox/submission/submission.dart';

class NoSubmissionJsonFile implements Exception {}

class SubmissionArchive {
  static submission({required List<int> fromBytes}) {
    final xzDecoded = XZDecoder().decodeBytes(fromBytes);
    final archive = TarDecoder().decodeBytes(xzDecoded);
    final submissionJsonFile = archive.findFile("submission.json");
    if (submissionJsonFile == null) {
      throw NoSubmissionJsonFile();
    }

    return Submission.fromJson(submissionJsonFile.content);
  }
}
