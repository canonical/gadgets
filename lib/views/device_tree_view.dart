import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/views/battery_view.dart';
import 'package:gadgets/views/certification_summary_view.dart';
import 'package:gadgets/views/cpu_flags_view.dart';
import 'package:gadgets/views/cpu_view.dart';
import 'package:gadgets/providers/device_report_controller_provider.dart';
import 'package:gadgets/node/node_selection.dart';
import 'package:gadgets/views/partition_view.dart';
import 'package:gadgets/views/usb_device_view.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:device_tree_lib/all.dart';
import 'package:flutter/foundation.dart';

import 'package:gadgets/providers/certification_status_provider.dart';

import '../node/tree_node_tile.dart';

double indentation(TreeNodeScope nodeScope) {
  return nodeScope.node.depth < 2
      ? nodeScope.indentation
      : nodeScope.indentation * 0.5;
}

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
    final theme = Theme.of(context);

    return ref.watch(deviceReportController.treeControllerProvider).when(
        data: (treeController) {
          return Scrollbar(
            thumbVisibility: false,
            controller: deviceReportController.scrollController,
            child: TreeView(
                controller: treeController,
                theme: TreeViewTheme(
                    lineStyle: LineStyle.disabled,
                    lineColor: theme.brightness == Brightness.light
                        ? Colors.grey.shade200
                        : Colors.grey
                            .shade800, // TODO: Find a theme color that behaves like this
                    roundLineCorners: true,
                    lineThickness: 2.5,
                    indent: 78),
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
                  } else if (data is CPU) {
                    return AutoScrollTag(
                        key: const ValueKey(
                            "cpu-summary-tag"), // FIXME: There's an assumption of just one item here
                        controller: deviceReportController.scrollController,
                        index: index,
                        child: CPUView(
                          cpu: data,
                          cpuSummary: node.parent?.data as CPUSummary,
                          isSelected: selectionState,
                        ));
                  } else if (data is CompilerFlags) {
                    return AutoScrollTag(
                        key: const ValueKey("cpu-compiler-flags"),
                        controller: deviceReportController.scrollController,
                        index: index,
                        child: CompilerFlagsView(
                            flags: data, isSelected: selectionState));
                  } else if (data is USBDevice) {
                    return AutoScrollTag(
                        key: ValueKey(data.info),
                        controller: deviceReportController.scrollController,
                        index: index,
                        child: USBDeviceView(
                          device: data,
                          usbSummary: node.parent?.data as USBSummary,
                          isSelected: selectionState,
                        ));
                  } else if (data is CertificationSummary) {
                    return AutoScrollTag(
                        key: ValueKey(node.id),
                        controller: deviceReportController.scrollController,
                        index: index,
                        child: CertificationSummaryView(
                            certificationSummary: data));
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
