import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspector_gadget/app_controller_provider.dart';

import 'node/tree_node_tile.dart';

class CustomTreeView extends ConsumerStatefulWidget {
  const CustomTreeView({Key? key}) : super(key: key);

  @override
  CustomTreeViewState createState() => CustomTreeViewState();
}

final defaultTreeViewTheme = ValueNotifier(const TreeViewTheme());

class CustomTreeViewState extends ConsumerState<CustomTreeView> {
  @override
  Widget build(BuildContext context) {
    final appController = ref.read(appControllerProvider);

    return ValueListenableBuilder<TreeViewTheme>(
      valueListenable: appController.treeViewTheme,
      builder: (_, treeViewTheme, __) {
        return ref.watch(appController.treeControllerProvider).when(
            data: (treeController) {
              return Scrollbar(
                isAlwaysShown: false,
                controller: appController.scrollController,
                child: TreeView(
                  controller: treeController,
                  theme: treeViewTheme,
                  scrollController: appController.scrollController,
                  nodeHeight: appController.nodeHeight,
                  nodeBuilder: (_, __) => const TreeNodeTile(),
                ),
              );
            },
            error: (error, _) => Center(child: Text('Error: $error')),
            loading: () => const Center(child: CircularProgressIndicator()));
      },
    );
  }
}
