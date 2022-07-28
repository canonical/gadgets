import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/presentation/result_presentation.dart';
import 'package:gadgets/providers/submission_provider.dart';
import 'package:gadgets/router/router.dart';
import 'package:logging/logging.dart';
import 'package:pluto_grid/pluto_grid.dart';

class TestListScreen extends ConsumerWidget {
  const TestListScreen({super.key, required String cid});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final router = AutoRouter.of(context);
    // print(router.current.args);

    final submissionProvider =
        ref.watch(deviceCertificationStatusProvider("CID X"));

    final results =
        submissionProvider?.expand((submission) => submission.results);

    final theme = Theme.of(context);
    PlutoGridConfiguration config = theme.brightness == Brightness.light
        ? const PlutoGridConfiguration()
        : const PlutoGridConfiguration.dark();

    if (theme.brightness == Brightness.dark) {
      config = config.copyWith(
          style: config.style.copyWith(
              gridBackgroundColor: theme.backgroundColor,
              rowColor: theme.backgroundColor));
    }

    if (results != null) {
      return Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            label: const Text("Close"),
            onPressed: () {
              ref.watch(appRouterProvider).navigate(const HomeScreenRoute());
            },
          ),
          body: PlutoGrid(
              columns: ResultColumn.plutoColumns.toList(),
              columnGroups: ResultColumn.plutoColumnGroups.toList(),
              rows: results.map((result) => result.toPlutoRow()).toList(),
              mode: PlutoGridMode.select,
              configuration: config,
              onChanged: (PlutoGridOnChangedEvent event) {
                Logger.root.info(event);
              },
              onLoaded: (PlutoGridOnLoadedEvent event) {
                Logger.root.info(event);
              }));
    } else {
      return const Text("No results");
    }
  }
}
