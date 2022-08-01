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

part of 'settings_view.dart';

class _SettingsButtonBar extends ConsumerWidget {
  const _SettingsButtonBar({
    Key? key,
    required this.children,
    this.singleChildPadding = const EdgeInsets.all(8),
    this.buttonBarPadding = const EdgeInsets.all(0),
    this.label,
  }) : super(key: key);

  final List<Widget> children;
  final String? label;
  final EdgeInsetsGeometry singleChildPadding;
  final EdgeInsetsGeometry buttonBarPadding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Color(0x331565c0),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null) ...[
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 16),
              child: Text(
                label!,
                style: const TextStyle(
                  color: kDarkBlue,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Divider(height: 1),
            ),
          ],
          if (children.length == 1)
            Padding(
              padding: singleChildPadding,
              child: children[0],
            )
          else
            Padding(
              padding: buttonBarPadding,
              child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                overflowButtonSpacing: 4,
                children: children,
              ),
            ),
        ],
      ),
    );
  }
}
