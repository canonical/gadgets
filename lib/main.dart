import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:inspector_gadget/device_tree_view.dart';
import 'device_report_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'device_report_controller_provider.dart';

void main(List<String> args) {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kReleaseMode) {
      exit(1);
    }
  };
  runApp(const ProviderScope(child: MyApp()));
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return YaruTheme(
      data: const YaruThemeData(themeMode: ThemeMode.light),
      builder: (context, yaru, child) => MaterialApp(
        title: 'Inspector Gadget',
        debugShowCheckedModeBanner: false,
        theme: yaru.variant?.theme ?? yaruLight,
        darkTheme: yaru.variant?.darkTheme ?? yaruDark,
        highContrastTheme: yaruHighContrastLight,
        highContrastDarkTheme: yaruHighContrastDark,
        home: const HomeScreen(title: 'Inspector Gadget'),
      ),
    );
  }
}

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void dispose() {
    ref.read(deviceReportControllerProvider).dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceReportController = ref.read(deviceReportControllerProvider);

    return DeviceReportControllerScope(
      controller: deviceReportController,
      child: ref.watch(deviceReportController.treeControllerProvider).when(
          data: (TreeViewController treeViewController) {
        return const _Unfocus(child: Scaffold(body: DeviceTreeView()));
      }, error: (error, trace) {
        if (kDebugMode) {
          print(error);
          print(trace);
        }
        return Center(
            child: Text('Error in device report controller scope: $error'));
      }, loading: () {
        return const Center(child: CircularProgressIndicator());
      }),
    );
  }
}

class _Unfocus extends StatelessWidget {
  const _Unfocus({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: FocusScope.of(context).unfocus,
      child: child,
    );
  }
}
