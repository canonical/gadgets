import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspector_gadget/device_report_controller_provider.dart';

import 'package:device_tree_lib/all.dart';
import 'package:flutter/foundation.dart';

import 'node/tree_node_tile.dart';

class DeviceTreeView extends ConsumerStatefulWidget {
  const DeviceTreeView({Key? key}) : super(key: key);

  @override
  DeviceTreeViewState createState() => DeviceTreeViewState();
}

final defaultTreeViewTheme = ValueNotifier(const TreeViewTheme());

class DeviceTreeViewState extends ConsumerState<DeviceTreeView> {
  @override
  Widget build(BuildContext context) {
    final deviceReportController = ref.read(deviceReportControllerProvider);

    return ValueListenableBuilder<TreeViewTheme>(
      valueListenable: deviceReportController.treeViewTheme,
      builder: (_, treeViewTheme, __) {
        return ref.watch(deviceReportController.treeControllerProvider).when(
            data: (treeController) {
              return Scrollbar(
                isAlwaysShown: false,
                controller: deviceReportController.scrollController,
                child: TreeView(
                    controller: treeController,
                    theme: treeViewTheme,
                    scrollController: deviceReportController.scrollController,
                    nodeHeight: deviceReportController.nodeHeight,
                    nodeBuilder: (BuildContext context, TreeNode node) {
                      // if (node.data is Partition) {
                      //  return const Text("PARTITION");
                      //} else {
                      return const TreeNodeTile();
                      // }
                    }),
              );
            },
            error: (error, trace) {
              if (kDebugMode) {
                print(error);
                print(trace);
              }
              return Center(child: Text('Error in value listenable: $error'));
            },
            loading: () => const Center(child: CircularProgressIndicator()));
      },
    );
  }
}
