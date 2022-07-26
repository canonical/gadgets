part of 'tree_node_tile.dart';

class _NodeTitle extends ConsumerWidget {
  final bool presentedSelectionState;
  const _NodeTitle({Key? key, required this.presentedSelectionState})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nodeScope = TreeNodeScope.of(context);

    final TextStyle? textStyle;
    if (presentedSelectionState) {
      textStyle = Theme.of(context)
          .textTheme //
          .subtitle1
          ?.copyWith(
              color: kSelectionColor,
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
  }
}
