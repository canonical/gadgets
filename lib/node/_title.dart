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

class _NodeTitle extends ConsumerWidget {
  final bool presentedSelectionState;
  const _NodeTitle({Key? key, required this.presentedSelectionState})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nodeScope = TreeNodeScope.of(context);

    final TextStyle? textStyle;
    if (presentedSelectionState) {
      textStyle = Theme.of(context)
          .textTheme //
          .subtitle1
          ?.copyWith(
              color: kSelectionColor,
              fontWeight: FontWeight.w100,
              overflow: TextOverflow.ellipsis);
    } else {
      textStyle = Theme.of(context).textTheme.subtitle1?.copyWith(
          fontWeight: FontWeight.w100, overflow: TextOverflow.ellipsis);
    }
    return Text(
      nodeScope.node.label,
      style: textStyle,
      overflow: TextOverflow.ellipsis,
    );
  }
}
