part of 'tree_node_tile.dart';

class _NodeSelector extends ConsumerWidget {
  const _NodeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final node = TreeNodeScope.of(context).node;
    final id = node.id;
    final certStatus = ref.watch(nodeCertificationStatusProvider(id));
    final isRootLevel = node.parent == null || node.parent?.parent == null;

    if (!isRootLevel) {
      return Container();
    }

    final theme = Theme.of(context);

    return IconButton(
        onPressed: () {
          showSnackBar(context,
              message: certStatus.testDescription,
              detail: certStatus.testDetail,
              icon: certStatus.icon(theme: theme));
        },
        icon: certStatus.icon(theme: theme),
        color: certStatus.color(theme: theme));

    /*
    return AnimatedBuilder(
      animation: deviceReportController,
      builder: (_, __) {
        return Checkbox(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(3)),
          ),
          activeColor: kSelectionColor,
          value: isSelected(ref, id),
          onChanged: (_) =>
              toggleSelectionForSubtree(ref, treeController, id: id),
        );
      },
    );
    */
  }
}
