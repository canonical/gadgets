part of 'tree_node_tile.dart';

class _NodeTitle extends ConsumerWidget {
  final bool? overriddenIsSelected;
  const _NodeTitle({Key? key, this.overriddenIsSelected}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceReportController = ref.read(deviceReportControllerProvider);
    final nodeScope = TreeNodeScope.of(context);
    final selectionOverride = overriddenIsSelected;

    return AnimatedBuilder(
      animation: deviceReportController,
      builder: (_, __) {
        final TextStyle? textStyle;
        if ((selectionOverride ??
            deviceReportController.isSelected(nodeScope.node.id))) {
          textStyle = Theme.of(context)
              .textTheme //
              .subtitle1
              ?.copyWith(
                  color: Colors.green.shade300,
                  fontWeight: FontWeight.w100,
                  overflow: TextOverflow.ellipsis);
        } else {
          textStyle = Theme.of(context).textTheme.subtitle1?.copyWith(
              fontWeight: FontWeight.w100, overflow: TextOverflow.ellipsis);
        }
        return Text(
          nodeScope.node.label,
          style: textStyle,
          overflow: TextOverflow.ellipsis,
        );
      },
    );
  }
}
