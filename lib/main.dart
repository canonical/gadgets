import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gadgets/views/home_screen.dart';
import 'package:gadgets/views/test_list_screen.dart';
import 'package:logging/logging.dart';
import 'package:yaru/yaru.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/foundation.dart';
import 'package:window_size/window_size.dart';

import 'router/router.dart';

import 'package:stack_trace/stack_trace.dart';

void main(List<String> args) {
  Logger.root.level = Level.INFO;
  Logger.root.onRecord.listen((record) {
    // ignore: avoid_print
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kReleaseMode) {
      exit(1);
    }
  };

  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    setWindowMinSize(const Size(600, 500));
  }
  runApp(const ProviderScope(child: GadgetsApp()));
}

void generateSampleTree(TreeNode parent) {
  final childrenIds = kDataSample[parent.id];
  if (childrenIds == null) return;

  parent.addChildren(
    childrenIds.map(
      (String childId) => TreeNode(id: childId, label: 'Sample Node'),
    ),
  );
  parent.children.forEach(generateSampleTree);
}

const String kRootId = 'Root';

const Map<String, List<String>> kDataSample = {
  kRootId: ['A', 'B', 'C', 'D', 'E', 'F'],
  'A': ['A 1', 'A 2'],
  'A 2': ['A 2 1'],
  'B': ['B 1', 'B 2', 'B 3'],
  'B 1': ['B 1 1'],
  'B 1 1': ['B 1 1 1', 'B 1 1 2'],
  'B 2': ['B 2 1'],
  'B 2 1': ['B 2 1 1'],
  'C': ['C 1', 'C 2', 'C 3', 'C 4'],
  'C 1': ['C 1 1'],
  'D': ['D 1'],
  'D 1': ['D 1 1'],
  'E': ['E 1'],
  'F': ['F 1', 'F 2'],
};

/*
final routes = RouteMap(routes: {
  '/': (_) => const MaterialPage(
        child: HomeScreen(),
      ),
  '/tests/:cid': (info) =>
      MaterialPage(child: TestListScreen(cid: info.pathParameters['cid']!)),
});*/

class GadgetsApp extends ConsumerWidget {
  const GadgetsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);

    return YaruTheme(
      data: const YaruThemeData(themeMode: ThemeMode.light),
      builder: (context, yaru, child) => MaterialApp.router(
          title: 'Inspector Gadget',
          debugShowCheckedModeBanner: false,
          theme: yaru.variant?.theme ?? yaruLight,
          darkTheme: yaru.variant?.darkTheme ?? yaruDark,
          highContrastTheme: yaruHighContrastLight,
          highContrastDarkTheme: yaruHighContrastDark,
          // home: const HomeScreen(title: 'Inspector Gadget',
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser()),
    );
  }
}
