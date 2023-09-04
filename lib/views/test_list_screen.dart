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

import 'package:auto_route/auto_route.dart';
import 'package:device_tree_lib/checkbox/submission/result.dart';
import 'package:device_tree_lib/checkbox/submission/submission.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/c3_client.dart';
import 'package:gadgets/presentation/result_presentation.dart';
import 'package:logging/logging.dart';
import 'package:pluto_grid/pluto_grid.dart';

StateProvider<String?> filterProvider = StateProvider<String?>((ref) => null);

class TestListScreen extends ConsumerStatefulWidget {
  final String cid;
  const TestListScreen({super.key, @PathParam('cid') required this.cid});

  @override
  TestListState createState() => TestListState();
}

class TestListState extends ConsumerState<TestListScreen> {
  late PlutoGridStateManager stateManager;

  Iterable<Result>? filteredResults(
      Iterable<Submission>? submissions, String? filterQuery) {
    return submissions
        ?.expand((submission) => submission.results.where((result) {
              String? query = filterQuery?.toLowerCase();
              String? categoryId = result.categoryId?.toLowerCase();
              String category = result.category.toLowerCase();
              String? comments = result.comments?.toLowerCase();
              if (query == null) {
                return true;
              }
              return (categoryId != null
                      ? categoryId.contains(query)
                      : false) ||
                  category.contains(query) ||
                  result.name.toLowerCase().contains(query) ||
                  (comments != null
                      ? comments.toLowerCase().contains(query)
                      : false);
            }));
  }

  @override
  Widget build(BuildContext context) {
    final submissions = ref.watch(remoteSubmissionProvider(
        const SubmissionParams(
            hardwareID: "201901-26809", submissionID: "274829")));

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

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            tooltip: 'Settings',
            onPressed: () {
              stateManager.showSetColumnsPopup(context);
              /*
              showMaterialModalBottomSheet(
                context: context,
                builder: (context) => Container(),
              );*/
            },
          )
        ],
        title: TextField(
          style: const TextStyle(fontSize: 12),
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
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
      body: submissions.when(
          data: (submission) {
            final filterQuery = ref.watch(filterProvider);
            final results = filteredResults([submission], filterQuery);

            ref.listen<String?>(filterProvider, (_, filterString) {
              final filtered = filteredResults([submission], filterString);
              stateManager.refRows.removeWhereFromOriginal((element) => true);
              stateManager.refRows.addAll(
                  filtered != null ? filtered.map((e) => e.toPlutoRow()) : []);

              stateManager.notifyListeners();
            });

            return PlutoGrid(
                columns: ResultColumn.plutoColumns.toList(),
                columnGroups: ResultColumn.plutoColumnGroups.toList(),
                rows: results!.map((result) => result.toPlutoRow()).toList(),
                mode: PlutoGridMode.select,
                configuration: config,
                onChanged: (PlutoGridOnChangedEvent event) {
                  // Logger.root.info(event);
                },
                onLoaded: (PlutoGridOnLoadedEvent event) {
                  stateManager = event.stateManager;
                });
            /*
            return DataTable(
                columns: resultDataColumns.toList(),
                rows: results!.map((e) => dataRow(e)).toList());
                */
          },
          error: (error, stackTrace) {
            Logger.root.severe(error);
            Logger.root.severe(stackTrace);
            return ErrorWidget(error);
          },
          loading: () =>
              const Center(child: CircularProgressIndicator.adaptive())),
    );
  }
}
