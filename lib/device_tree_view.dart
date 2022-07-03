import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:inspector_gadget/battery_view.dart';
import 'package:inspector_gadget/color_modifications.dart';
import 'package:inspector_gadget/device_report_controller_provider.dart';
import 'package:inspector_gadget/node/node_selection.dart';
import 'package:inspector_gadget/partition_view.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:device_tree_lib/all.dart';
import 'package:flutter/foundation.dart';

import 'node/tree_node_tile.dart';
import 'node/selection.dart';

class DeviceTreeView extends ConsumerStatefulWidget {
  const DeviceTreeView({Key? key}) : super(key: key);

  @override
  DeviceTreeViewState createState() => DeviceTreeViewState();
}

final defaultTreeViewTheme = ValueNotifier(const TreeViewTheme());

class DeviceTreeViewState extends ConsumerState<DeviceTreeView> {
  @override
  Widget build(BuildContext context) {
    final deviceReportController = ref.watch(deviceReportControllerProvider);

    return ref.watch(deviceReportController.treeControllerProvider).when(
        data: (treeController) {
          return Scrollbar(
            thumbVisibility: false,
            controller: deviceReportController.scrollController,
            child: TreeView(
                controller: treeController,
                theme: TreeViewTheme(
                    lineStyle: LineStyle.connected,
                    lineColor: Theme.of(context).highlightColor,
                    roundLineCorners: true,
                    lineThickness: 1,
                    indent: 38),
                scrollController: deviceReportController.scrollController,
                nodeHeight: deviceReportController.nodeHeight,
                nodeBuilder: (BuildContext context, TreeNode node) {
                  final selectionState =
                      ref.watch(nodeSelectionStateProvider(node.id));

                  final data = node.data;
                  final index = treeController.indexOf(node);
                  if (data is Battery) {
                    return AutoScrollTag(
                      key: ValueKey("${data.serial}-battery-tag"),
                      controller: deviceReportController.scrollController,
                      index: index,
                      child: BatteryView(
                          battery: data, isSelected: selectionState),
                    );
                  } else if (data is Partition) {
                    return AutoScrollTag(
                        key: ValueKey("${data.id}-partition-tag"),
                        controller: deviceReportController.scrollController,
                        index: index,
                        child: PartitionView(
                          partition: data,
                          isSelected: selectionState,
                        ));
                  } else {
                    return AutoScrollTag(
                        key: ValueKey(index),
                        controller: deviceReportController.scrollController,
                        index: index,
                        child: TreeNodeTile(isSelected: selectionState));
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
  }
}
