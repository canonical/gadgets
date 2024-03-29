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

import 'package:device_tree_lib/device_tree_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:gadgets/device_report_controller.dart';
import 'package:gadgets/presentation/result_presentation.dart';
import 'package:gadgets/providers/device_report_controller_provider.dart';
import 'package:gadgets/node/node_selection.dart';
import 'package:gadgets/providers/usecase_provider.dart';
import 'package:gadgets/router/router.dart';
import 'package:gadgets/views/feedback_dialog.dart';
import '../color_modifications.dart';
import 'package:gadgets/providers/certification_status_provider.dart';
import 'package:gadgets/common/add_node_dialog.dart';
import '../views/snackbar.dart';

import 'package:unicons/unicons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part '_actions_chip.dart';
part '_selector.dart';
part '_title.dart';

const RoundedRectangleBorder kRoundedRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
);

class TreeNodeTile extends ConsumerStatefulWidget {
  final bool isSelected;
  const TreeNodeTile({Key? key, required this.isSelected}) : super(key: key);

  @override
  TreeNodeTileState createState() => TreeNodeTileState();
}

class TreeNodeTileState extends ConsumerState<TreeNodeTile> {
  @override
  Widget build(BuildContext context) {
    final deviceReportController =
        DeviceReportControllerScope.of(context).controller;
    final treeController = deviceReportController.treeController;
    final nodeScope = TreeNodeScope.of(context);
    final isInternalNode = nodeScope.node.children.isNotEmpty;
    final isRoot =
        nodeScope.node.parent != null && nodeScope.node.parent?.parent == null;
    final isExpanded = treeController.isExpanded(nodeScope.node.id);
    final selected = isSelected(ref, nodeScope.node.id);

    return InkWell(
      onTap: () => treeController.toggleExpanded(nodeScope.node),
      onLongPress: () {
        toggleSelectionForSubtree(ref, treeController, id: nodeScope.node.id);
      },
      child: SizedBox(
          height: 40,
          child: Row(
            children: [
              const LinesWidget(),
              isRoot ? const SizedBox(width: 4) : Container(),
              isInternalNode
                  ? const Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: _NodeSelector(),
                    )
                  : Container(),
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
              _NodeActionsChip(presentedSelectionState: selected),
              const SizedBox(width: 12),
              isInternalNode && !isExpanded || !isInternalNode
                  ? Expanded(
                      child: _NodeTitle(presentedSelectionState: selected))
                  : Container()
            ],
          )),
    );
  }
}
