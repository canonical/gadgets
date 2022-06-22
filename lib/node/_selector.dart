part of 'tree_node_tile.dart';

class _NodeSelector extends ConsumerWidget {
  const _NodeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = TreeNodeScope.of(context).node.id;
    final deviceReportController = ref.read(deviceReportControllerProvider);

    return AnimatedBuilder(
      animation: deviceReportController,
      builder: (_, __) {
        return Checkbox(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(3)),
          ),
          activeColor: Colors.green.shade600,
          value: deviceReportController.isSelected(id),
          onChanged: (_) => deviceReportController.toggleSelection(id),
        );
      },
    );
  }
}
