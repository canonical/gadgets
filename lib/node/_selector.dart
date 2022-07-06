part of 'tree_node_tile.dart';

class _NodeSelector extends ConsumerWidget {
  const _NodeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final node = TreeNodeScope.of(context).node;
    final id = node.id;
    final certStatusMap = ref.watch(certificationStatusProvider);
    final CertificationStatus certStatus = certStatusMap[id] != null
        ? certStatusMap[id]!
        : CertificationStatus.unknown;
    final isRootLevel = node.parent == null || node.parent?.parent == null;

    final deviceReportController = ref.watch(deviceReportControllerProvider);
    final treeController =
        ref.watch(deviceReportController.treeControllerProvider).value!;

    if (!isRootLevel) {
      return Container();
    }

    final col =
        color(certificationStatus: certStatus, themeData: Theme.of(context));

    switch (certStatus) {
      case CertificationStatus.passed:
        return IconButton(
            onPressed: null,
            icon: Icon(UniconsLine.check_circle, color: Colors.green.shade400),
            color: col);

      case CertificationStatus.unknown:
        return IconButton(
            onPressed: null,
            icon: Icon(UniconsLine.question_circle, color: col));

      case CertificationStatus.failed:
        return IconButton(
            onPressed: null,
            icon: Icon(UniconsLine.exclamation_circle, color: col));
    }
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
