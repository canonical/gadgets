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
      valueListenable: appController != null
          ? appController.treeViewTheme
          : defaultTreeViewTheme,
      builder: (_, treeViewTheme, __) {
        return Scrollbar(
          isAlwaysShown: false,
          controller: appController.scrollController,
          child: TreeView(
            controller: appController.treeController,
            theme: treeViewTheme,
            scrollController: appController.scrollController,
            nodeHeight: appController != null ? appController.nodeHeight : 40.0,
            nodeBuilder: (_, __) => const TreeNodeTile(),
          ),
        );
      },
    );
  }
}
