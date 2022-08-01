/*
 * Copyright (C) 2022 Canonical Ltd
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

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
                  .navigate(TestListScreenRoute(cid: 'X'));
            }),
          );
        },
        icon: descendentStatus.icon(theme: theme),
        color: descendentStatus.color(theme: theme));
  }
}
