import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

final _nodeSelectionMapProvider =
    StateProvider<IMap<String, bool>>((ref) => IMap());

final nodeSelectionStateProvider = StateProvider.family<bool, String>(
    (ref, id) => ref.watch(_nodeSelectionMapProvider)[id] ?? false);

bool isSelected(WidgetRef ref, String id) =>
    ref.watch(_nodeSelectionMapProvider)[id] ?? false;

void toggleSelectionForSubtree(WidgetRef ref, TreeViewController treeController,
    {required String id}) {
  final node = treeController.find(id);
  if (node == null) {
    return;
  }

  final shouldSelect = !isSelected(ref, id);
  for (final node in [node].followedBy(node.descendants)) {
    toggleSelection(ref: ref, id: node.id, shouldSelect: shouldSelect);
  }
}

void toggleSelection(
    {required WidgetRef ref, required String id, bool? shouldSelect}) {
  shouldSelect ??= !isSelected(ref, id);
  shouldSelect ? _select(ref, id) : _deselect(ref, id);
}

void _select(WidgetRef ref, String id) {
  final selectedNodes = ref.read(_nodeSelectionMapProvider);
  ref.read(_nodeSelectionMapProvider.notifier).state =
      selectedNodes.add(id, true);
}

void _deselect(WidgetRef ref, String id) {
  final selectedNodes = ref.read(_nodeSelectionMapProvider);
  ref.read(_nodeSelectionMapProvider.notifier).state = selectedNodes.remove(id);
}

void selectAll(WidgetRef ref, TreeViewController treeController,
    [bool select = true]) {
  if (select) {
    for (var descendant in treeController.rootNode.descendants) {
      ref.read(_nodeSelectionMapProvider.notifier).state =
          ref.read(_nodeSelectionMapProvider).add(descendant.id, true);
    }
  } else {
    for (var descendant in treeController.rootNode.descendants) {
      ref.read(_nodeSelectionMapProvider.notifier).state =
          ref.read(_nodeSelectionMapProvider).remove(descendant.id);
    }
  }
}
