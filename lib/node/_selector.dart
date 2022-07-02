part of 'tree_node_tile.dart';

class _NodeSelector extends ConsumerWidget {
  const _NodeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = TreeNodeScope.of(context).node.id;
    final deviceReportController = ref.watch(deviceReportControllerProvider);
    final treeController =
        ref.watch(deviceReportController.treeControllerProvider).value!;

    return AnimatedBuilder(
      animation: deviceReportController,
      builder: (_, __) {
        return Checkbox(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(3)),
          ),
          activeColor: kSelectionColor,
          value: deviceReportController.isSelected(ref, id),
          onChanged: (_) => deviceReportController
              .toggleSelectionForSubtree(ref, treeController, id: id),
        );
      },
    );
  }
}
