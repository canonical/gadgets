part of 'settings_view.dart';

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

class _Actions extends ConsumerWidget {
  const _Actions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceReportController = ref.read(deviceReportControllerProvider);
    final treeController =
        ref.watch(deviceReportController.treeControllerProvider);

    return treeController.when(
        data: (treeController) {
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
                onPressed: treeController.expandAll,
              ),
              _Action(
                label: const Text('Collapse All'),
                onPressed: treeController.collapseAll,
              ),
              _Action(
                label: const Text('Select All'),
                onPressed: () => deviceReportController.selectAll(ref, true),
              ),
              _Action(
                label: const Text('Deselect All'),
                onPressed: () => deviceReportController.selectAll(ref, false),
              ),
            ],
          );
        },
        error: (error, _) => Center(child: Text('Error: $error')),
        loading: () => const Center(child: CircularProgressIndicator()));
  }
}
