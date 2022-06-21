part of 'settings_view.dart';

class _Actions extends ConsumerWidget {
  const _Actions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appController = ref.read(appControllerProvider);
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        _Action(
          label: const Text('Add Top Level Node'),
          onPressed: () async => await showAddNodeDialog(context, ref),
        ),
        _Action(
          label: const Text('Expand All'),
          onPressed: appController.treeController.expandAll,
        ),
        _Action(
          label: const Text('Collapse All'),
          onPressed: appController.treeController.collapseAll,
        ),
        _Action(
          label: const Text('Select All'),
          onPressed: appController.selectAll,
        ),
        _Action(
          label: const Text('Deselect All'),
          onPressed: () => appController.selectAll(false),
        ),
      ],
    );
  }
}

class _Action extends ConsumerWidget {
  const _Action({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  final Widget label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        primary: kDarkBlue,
        backgroundColor: const Color(0x331565c0),
        padding: const EdgeInsets.all(20),
        side: const BorderSide(color: kDarkBlue),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      onPressed: onPressed,
      child: label,
    );
  }
}
