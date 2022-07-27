import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/device_report_controller.dart';
import 'package:gadgets/providers/device_report_controller_provider.dart';
import 'package:gadgets/views/device_tree_view.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) =>
      ref.watch(deviceReportControllerProvider).when(
          data: (deviceReportController) => DeviceReportControllerScope(
              controller: deviceReportController,
              child: const _Unfocus(child: Scaffold(body: DeviceTreeView()))),
          error: (error, stackTrace) => ErrorWidget(error),
          loading: () =>
              const Center(child: CircularProgressIndicator.adaptive()));
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
