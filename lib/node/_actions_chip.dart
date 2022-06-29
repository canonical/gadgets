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

    return PopupMenuButton<int>(
      key: _popupMenuKey,
      tooltip: 'Show Actions',
      offset: const Offset(0, 32),
      color: Colors.blueGrey.shade100,
      shape: kRoundedRectangleBorder,
      elevation: 6,
      itemBuilder: (_) => _popupMenuItems(nodeScope.node),
      onSelected: (int selected) {
        if (selected == 0) {
          showAddNodeDialog(context, ref, nodeScope.node);
        } else {
          _delete(ref, context, deleteSubtree: selected == 2);
        }
      },
      child: RawChip(
        labelPadding: const EdgeInsets.only(left: 2, right: 8),
        onPressed: () => _menu?.showButtonMenu(),
        backgroundColor: const Color(0x331565c0),
        label: Text(
          nodeScope.node.id,
          style: const TextStyle(
            color: _kDarkBlue,
            fontWeight: FontWeight.w600,
          ),
        ),
        avatar: Icon(
          _iconData(node: nodeScope.node),
          size: 20,
          color: _kDarkBlue,
        ),
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

List<PopupMenuEntry<int>> _popupMenuItems(TreeNode node) {
  final isInternal = node.children.isNotEmpty;

  final List<PopupMenuEntry<int>> items = [
    const PopupMenuItem(
      value: 0,
      height: 28,
      child: ListTile(
        dense: true,
        title: Text('Add'),
        contentPadding: EdgeInsets.symmetric(horizontal: 4),
        leading: Icon(Icons.add_circle_rounded, color: _kDarkBlue),
      ),
    ),
    const PopupMenuDivider(height: 1),
    const PopupMenuItem(
      value: 1,
      height: 28,
      child: ListTile(
        dense: true,
        title: Text('Delete'),
        contentPadding: EdgeInsets.symmetric(horizontal: 4),
        leading: Icon(Icons.delete_rounded, color: Colors.deepOrange),
      ),
    )
  ];

  if (isInternal) {
    items.add(const PopupMenuDivider(height: 1));
    items.add(const PopupMenuItem(
      value: 2,
      height: 28,
      child: ListTile(
        dense: true,
        title: Text('Delete subtree'),
        contentPadding: EdgeInsets.symmetric(horizontal: 4),
        leading: Icon(Icons.delete_forever_rounded, color: Colors.red),
      ),
    ));
  }

  return items;
}
