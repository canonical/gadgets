part of 'tree_node_tile.dart';

class _NodeActionsChip extends ConsumerStatefulWidget {
  const _NodeActionsChip({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _NodeActionsChipState();
  }
}

class _NodeActionsChipState extends ConsumerState<_NodeActionsChip> {
  final GlobalKey<PopupMenuButtonState> _popupMenuKey = GlobalKey();

  PopupMenuButtonState? get _menu => _popupMenuKey.currentState;

  @override
  Widget build(BuildContext context) {
    final nodeScope = TreeNodeScope.of(context);
    final shape = RoundedRectangleBorder(
        side: BorderSide(color: Theme.of(context).focusColor),
        borderRadius: const BorderRadius.all(Radius.circular(10)));
    final theme = Theme.of(context);

    return PopupMenuButton<int>(
      key: _popupMenuKey,
      tooltip: 'Show Actions',
      offset: const Offset(0, 32),
      shape: shape,
      elevation: 12,
      itemBuilder: (_) => _popupMenuItems(context, nodeScope.node),
      onSelected: (int selected) {
        if (selected == 0) {
          showAddNodeDialog(context, ref, nodeScope.node);
        } else {
          _delete(ref, context, deleteSubtree: selected == 2);
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
            color: theme.textTheme.headline1?.color,
            fontWeight: FontWeight.w400,
          ),
        ),
        avatar: nodeScope.node.children.isNotEmpty
            ? Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Icon(
                  _iconData(node: nodeScope.node),
                  size: 20,
                  color: theme.brightness == Brightness.dark
                      ? lighten(theme.colorScheme.primary, 0.03)
                      : darken(theme.colorScheme.primary, 0.02),
                ))
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
    final deviceReportController = ref.read(deviceReportControllerProvider);

    ref
        .watch(deviceReportController.treeControllerProvider)
        .whenData((treeController) {
      final treeNode = TreeNodeScope.of(context).node;
      final parent = treeNode.parent ?? treeController.rootNode;

      treeNode.delete(recursive: deleteSubtree);
      treeController.refreshNode(parent, keepExpandedNodes: true);
    });
  }
}

List<PopupMenuEntry<int>> _popupMenuItems(BuildContext context, TreeNode node) {
  final isInternal = node.children.isNotEmpty;
  final iconColor = Theme.of(context).colorScheme.inversePrimary;

  final List<PopupMenuEntry<int>> items = [
    PopupMenuItem(
      value: 0,
      height: 28,
      child: ListTile(
        dense: true,
        title: const Text('Add'),
        contentPadding: const EdgeInsets.symmetric(horizontal: 4),
        leading: Icon(Icons.add_circle_rounded, color: iconColor),
      ),
    ),
    const PopupMenuDivider(height: 1),
    PopupMenuItem(
      value: 1,
      height: 28,
      child: ListTile(
        dense: true,
        title: const Text('Delete'),
        contentPadding: const EdgeInsets.symmetric(horizontal: 4),
        leading: Icon(Icons.delete_rounded, color: iconColor),
      ),
    )
  ];

  if (isInternal) {
    items.add(const PopupMenuDivider(height: 1));
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

  return items;
}
