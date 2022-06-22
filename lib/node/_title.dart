part of 'tree_node_tile.dart';

class _NodeTitle extends ConsumerWidget {
  const _NodeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceReportController = ref.read(deviceReportControllerProvider);
    final nodeScope = TreeNodeScope.of(context);

    return AnimatedBuilder(
      animation: deviceReportController,
      builder: (_, __) {
        final textStyle = deviceReportController.isSelected(nodeScope.node.id)
            ? Theme.of(context)
                .textTheme //
                .subtitle1
                ?.copyWith(
                  color: Colors.green.shade500,
                  fontWeight: FontWeight.w500,
                )
            : Theme.of(context).textTheme.subtitle1;
        return Text(
          nodeScope.node.label,
          style: textStyle,
          overflow: TextOverflow.ellipsis,
        );
      },
    );
  }
}
