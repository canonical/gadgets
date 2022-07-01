import 'package:device_tree_lib/all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:inspector_gadget/device_report_controller_provider.dart';

import '../common/common.dart';
import '../device_report_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../color_modifications.dart';
import 'package:unicons/unicons.dart';
import 'package:device_tree_lib/all.dart';

part '_actions_chip.dart';
part '_selector.dart';
part '_title.dart';

const Color _kDarkBlue = Color(0xFF1565C0);

const RoundedRectangleBorder kRoundedRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
);

class TreeNodeTile extends ConsumerStatefulWidget {
  const TreeNodeTile({Key? key}) : super(key: key);

  @override
  TreeNodeTileState createState() => TreeNodeTileState();
}

class TreeNodeTileState extends ConsumerState<TreeNodeTile> {
  @override
  Widget build(BuildContext context) {
    final deviceReportController = ref.read(deviceReportControllerProvider);
    final treeController =
        ref.read(deviceReportController.treeControllerProvider).value!;
    final nodeScope = TreeNodeScope.of(context);
    final isInternalNode = nodeScope.node.children.isNotEmpty;
    final isExpanded = treeController.isExpanded(nodeScope.node.id);
    final isSelected = nodeScope.node.ancestors
        .toList()
        .followedBy([nodeScope.node]).any(
            (element) => deviceReportController.isSelected(element.id));

    return InkWell(
      onTap: () => treeController.toggleExpanded(nodeScope.node),
      onLongPress: () =>
          deviceReportController.toggleSelection(nodeScope.node.id),
      child: SizedBox(
          height: 40,
          child: Row(
            children: [
              const LinesWidget(),
              const SizedBox(width: 6),
              isInternalNode ? const _NodeSelector() : Container(),
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: !isExpanded && isInternalNode
                    ? const Opacity(
                        opacity: 0.15, child: Icon(Icons.unfold_more_outlined))
                    : isInternalNode
                        ? const Opacity(
                            opacity: 0.15,
                            child: Icon(Icons.unfold_less_outlined))
                        : Container(),
              ),
              _NodeActionsChip(presentedSelectionState: isSelected),
              const SizedBox(width: 12),
              isInternalNode && !isExpanded || !isInternalNode
                  ? Expanded(
                      child: _NodeTitle(presentedSelectionState: isSelected))
                  : Container()
            ],
          )),
    );
  }
}
