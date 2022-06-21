import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

import 'app_controller.dart';
import 'node/tree_node_tile.dart';

class CustomTreeView extends StatefulWidget {
  const CustomTreeView({Key? key}) : super(key: key);

  @override
  _CustomTreeViewState createState() => _CustomTreeViewState();
}

final defaultTreeViewTheme = ValueNotifier(const TreeViewTheme());

class _CustomTreeViewState extends State<CustomTreeView> {
  @override
  Widget build(BuildContext context) {
    final appController = AppController.of(context);

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
            scrollController: appController?.scrollController,
            nodeHeight: appController != null ? appController.nodeHeight : 40.0,
            nodeBuilder: (_, __) => const TreeNodeTile(),
          ),
        );
      },
    );
  }
}
