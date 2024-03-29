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

part of 'tree_node_tile.dart';

class _NodeActionsChip extends ConsumerStatefulWidget {
  final bool presentedSelectionState;
  const _NodeActionsChip({Key? key, required this.presentedSelectionState})
      : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _NodeActionsChipState();
  }
}

class _NodeActionsChipState extends ConsumerState<_NodeActionsChip> {
  final GlobalKey<PopupMenuButtonState> _popupMenuKey =
      GlobalKey(debugLabel: "Actions");

  PopupMenuButtonState? get _menu => _popupMenuKey.currentState;

  @override
  Widget build(BuildContext context) {
    final nodeScope = TreeNodeScope.of(context);
    final shape = RoundedRectangleBorder(
        side: BorderSide(color: Theme.of(context).focusColor),
        borderRadius: const BorderRadius.all(Radius.circular(10)));
    final theme = Theme.of(context);
    final actionsChip = context.widget as _NodeActionsChip;
    final isInternal = nodeScope.node.children.isNotEmpty;

    final useCase = ref.watch(useCaseProvider);

    return PopupMenuButton<int>(
      key: _popupMenuKey,
      tooltip: 'Show Actions',
      offset: const Offset(0, 32),
      shape: shape,
      elevation: 12,
      itemBuilder: (_) => _popupMenuItems(context, useCase, isInternal),
      onSelected: (int selected) {
        if (selected == 0) {
          showAddNodeDialog(context, ref, nodeScope.node);
        } else if (selected == 1) {
          showDialog(
              context: context,
              builder: (context) => FeedbackDialog(node: nodeScope.node));
        }
        switch (useCase) {
          case UseCase.viewer:
            break;

          case UseCase.qa:
            {
              if (selected == 2) {
                _delete(ref, context, deleteSubtree: isInternal);
              }
            }
        }
      },
      child: RawChip(
        labelPadding: const EdgeInsets.only(left: 6, right: 6),
        onPressed: () => _menu?.showButtonMenu(),
        shape: shape,
        backgroundColor: theme.backgroundColor,
        label: Text(
          nodeScope.node.id,
          style: TextStyle(
            color: actionsChip.presentedSelectionState
                ? kSelectionColor
                : theme.textTheme.headline1?.color,
            fontWeight: FontWeight.w400,
          ),
        ),
        avatar: nodeScope.node.children.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Icon(_iconData(node: nodeScope.node),
                    size: 20, color: theme.colorScheme.primary))
            : null,
      ),
    );
  }

  // FIXME: Move this to TreeNode subclass?
  IconData _iconData({required TreeNode node}) {
    final nodeData = node.data;
    if (nodeData is WithIcon) {
      return nodeData.iconData;
    }

    return Icons.settings_rounded;
  }

  void _delete(
    WidgetRef ref,
    BuildContext context, {
    required bool deleteSubtree,
  }) {
    final deviceReportController =
        DeviceReportControllerScope.of(context).controller;
    final treeController = deviceReportController.treeController;

    final treeNode = TreeNodeScope.of(context).node;
    final parent = treeNode.parent ?? treeController.rootNode;

    treeNode.delete(recursive: deleteSubtree);
    treeController.refreshNode(parent, keepExpandedNodes: true);
  }
}

List<PopupMenuEntry<int>> _popupMenuItems(
    BuildContext context, UseCase useCase, bool isInternal) {
  final iconColor = Theme.of(context).colorScheme.inversePrimary;

  final List<PopupMenuEntry<int>> items = [
    PopupMenuItem(
      value: 0,
      height: 28,
      child: ListTile(
        dense: true,
        title: const Text('Add Comment'),
        contentPadding: const EdgeInsets.symmetric(horizontal: 4),
        leading: Transform.scale(
            scaleX: -1,
            child: Icon(UniconsLine.comment_alt_message, color: iconColor)),
      ),
    ),
    const PopupMenuDivider(height: 1),
    PopupMenuItem(
      value: 1,
      height: 28,
      child: ListTile(
        dense: true,
        title: const Text('Report Problem'),
        contentPadding: const EdgeInsets.symmetric(horizontal: 4),
        leading: Icon(UniconsLine.exclamation_triangle, color: iconColor),
      ),
    ),
  ];

  if (useCase == UseCase.qa) {
    items.add(
      const PopupMenuDivider(height: 1),
    );

    if (!isInternal) {
      items.add(PopupMenuItem(
        value: 1,
        height: 28,
        child: ListTile(
          dense: true,
          title: const Text('Delete'),
          contentPadding: const EdgeInsets.symmetric(horizontal: 4),
          leading: Icon(Icons.delete_rounded, color: iconColor),
        ),
      ));
    }

    if (isInternal) {
      items.add(PopupMenuItem(
        value: 2,
        height: 28,
        child: ListTile(
          dense: true,
          title: const Text('Delete subtree'),
          contentPadding: const EdgeInsets.symmetric(horizontal: 4),
          leading: Icon(Icons.delete_forever_rounded, color: iconColor),
        ),
      ));
    }
  }

  return items;
}
