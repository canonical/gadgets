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
                    color: Colors.green.shade300,
                    fontWeight: FontWeight.w100,
                    overflow: TextOverflow.ellipsis)
            : Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.w100, overflow: TextOverflow.ellipsis);
        return Text(
          nodeScope.node.label,
          style: textStyle,
          overflow: TextOverflow.ellipsis,
        );
      },
    );
  }
}
