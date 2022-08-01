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
