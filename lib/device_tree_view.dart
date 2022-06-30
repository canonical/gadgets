import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspector_gadget/battery_view.dart';
import 'package:inspector_gadget/device_report_controller_provider.dart';
import 'package:inspector_gadget/partition_view.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

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
                thumbVisibility: false,
                controller: deviceReportController.scrollController,
                child: TreeView(
                    controller: treeController,
                    theme: treeViewTheme,
                    scrollController: deviceReportController.scrollController,
                    nodeHeight: deviceReportController.nodeHeight,
                    nodeBuilder: (BuildContext context, TreeNode node) {
                      final data = node.data;
                      final index = treeController.indexOf(node);
                      if (data is Battery) {
                        return AutoScrollTag(
                          key: ValueKey(index),
                          controller: deviceReportController.scrollController,
                          index: index,
                          child: BatteryView(battery: data),
                        );
                      } else if (data is Partition) {
                        return AutoScrollTag(
                            key: ValueKey(index),
                            controller: deviceReportController.scrollController,
                            index: index,
                            child: PartitionView(partition: data));
                      } else {
                        return AutoScrollTag(
                            key: ValueKey(index),
                            controller: deviceReportController.scrollController,
                            index: index,
                            child: const TreeNodeTile());
                      }
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
