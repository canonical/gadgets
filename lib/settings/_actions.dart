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

class _Action extends ConsumerWidget {
  const _Action({
    Key? key,
    required this.label,
    this.onPressed,
  }) : super(key: key);

  final Widget label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        primary: kDarkBlue,
        backgroundColor: const Color(0x331565c0),
        padding: const EdgeInsets.all(20),
        side: const BorderSide(color: kDarkBlue),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      onPressed: onPressed,
      child: label,
    );
  }
}

class _Actions extends ConsumerWidget {
  const _Actions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceReportController =
        DeviceReportControllerScope.of(context).controller;

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        _Action(
          label: const Text('Add Top Level Node'),
          onPressed: () async => await showAddNodeDialog(context, ref),
        ),
        _Action(
          label: const Text('Expand All'),
          onPressed: deviceReportController.treeController.expandAll,
        ),
        _Action(
          label: const Text('Collapse All'),
          onPressed: deviceReportController.treeController.collapseAll,
        ),
        _Action(
          label: const Text('Select All'),
          onPressed: () =>
              selectAll(ref, deviceReportController.treeController, true),
        ),
        _Action(
          label: const Text('Deselect All'),
          onPressed: () =>
              selectAll(ref, deviceReportController.treeController, false),
        ),
      ],
    );
  }
}
