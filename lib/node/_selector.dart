part of 'tree_node_tile.dart';

CertificationStatus status(
    {required TreeNode subtree,
    required StateProviderFamily<CertificationStatus, String> statusProvider,
    required WidgetRef ref}) {
  final nodes = [subtree];
  nodes.addAll(subtree.descendants);

  CertificationStatus status = ref.watch(statusProvider(subtree.id));

  for (final descendent in nodes) {
    final nodeStatus = ref.read(statusProvider(descendent.id));
    if (nodeStatus.index > status.index) {
      status = nodeStatus;
    }
  }
  return status;
}

class _NodeSelector extends ConsumerWidget {
  const _NodeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final node = TreeNodeScope.of(context).node;
    final isRootLevel = node.parent == null || node.parent?.parent == null;

    if (!isRootLevel) {
      return Container();
    }

    final theme = Theme.of(context);

    final descendentStatus = status(
        subtree: node,
        statusProvider: nodeCertificationStatusProvider,
        ref: ref);

    return IconButton(
        onPressed: () {
          showSnackBar(
            context,
            message: descendentStatus.testDescription,
            detail: descendentStatus.testDetail,
            icon: descendentStatus.icon(theme: theme),
            followUp: FollowUp("Learn More", () {
              ScaffoldMessenger.of(context).removeCurrentSnackBar();

              ref
                  .watch(appRouterProvider)
                  .navigate(TestListScreenRoute(cid: "CID X"));

              /*
              showMaterialModalBottomSheet(
                  context: context,
                  isDismissible: false,
                  builder: (context) {
                    final submissionProvider =
                        ref.watch(deviceCertificationStatusProvider("CID X"));

                    final results = submissionProvider
                        ?.expand((submission) => submission.results);

                    if (results != null) {
                      return PlutoGrid(
                          columns: ResultColumn.plutoColumns.toList(),
                          rows: results
                              .map((result) => result.toPlutoRow())
                              .toList(),
                          mode: PlutoGridMode.select,
                          configuration: theme.brightness == Brightness.light
                              ? const PlutoGridConfiguration()
                              : const PlutoGridConfiguration.dark(),
                          onChanged: (PlutoGridOnChangedEvent event) {
                            Logger.root.info(event);
                          },
                          onLoaded: (PlutoGridOnLoadedEvent event) {
                            Logger.root.info(event);
                          });
                    } else {
                      return const Text("(No results)");
                    }
                  });
                  */
            }),
          );
        },
        icon: descendentStatus.icon(theme: theme),
        color: descendentStatus.color(theme: theme));
  }
}
