import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

enum UseCase { viewer, qa }

Provider<UseCase> useCaseProvider = Provider<UseCase>((ref) {
  const usecase = String.fromEnvironment("USE_CASE");
  switch (usecase) {
    case "":
    case "viewer":
      return UseCase.viewer;

    case "qa":
      return UseCase.qa;

    default:
      {
        Logger.root.warning(
            "Unexpected usecase: '$usecase' -> defaulting to UseCase.viewer");
        return UseCase.viewer;
      }
  }
});
