import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/presentation/result_presentation.dart';
import 'package:gadgets/providers/submission_provider.dart';
import 'package:gadgets/router/router.dart';
import 'package:logging/logging.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

StateProvider<String?> filterProvider = StateProvider<String?>((ref) => null);

class TestListScreen extends ConsumerWidget {
  const TestListScreen({super.key, @PathParam('cid') required String cid});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final router = AutoRouter.of(context);
    // print(router.current.args);

    final submissionProvider =
        ref.watch(deviceCertificationStatusProvider("X"));

    final filterQuery = ref.watch(filterProvider);

    final results = submissionProvider
        ?.expand((submission) => submission.results.where((element) {
              String? query = filterQuery?.toLowerCase();
              String? categoryId = element.categoryId?.toLowerCase();
              String? category = element.category.toLowerCase();
              if (query == null) {
                return true;
              }
              return (categoryId != null ? categoryId.contains(query) : true) ||
                  category.contains(query);
            }));

    print(ref.read(filterProvider));
    print(results?.map((e) => e.name));

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

    config = config.copyWith(style: config.style.copyWith(rowHeight: 34));

    if (results != null) {
      return Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.settings_outlined),
                tooltip: 'Settings',
                onPressed: () {
                  showMaterialModalBottomSheet(
                    context: context,
                    builder: (context) => Container(),
                  );
                },
              )
            ],
            title: TextField(
              style: const TextStyle(fontSize: 12),
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    gapPadding: 0,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                labelText: 'Filter',
              ),
              onChanged: (value) {
                ref.read(filterProvider.notifier).state = value;
              },
            ),
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
