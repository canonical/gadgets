import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gadgets/device_report_controller.dart';
import 'package:gadgets/views/device_tree_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:gadgets/providers/device_report_controller_provider.dart';

ProviderScope providerOverride(
        {required String value, required Widget child}) =>
    ProviderScope(overrides: [
      deviceReportControllerProvider.overrideWithValue(DeviceReportController())
    ], child: child);

Widget deviceTreeView() => const ProviderScope(child: DeviceTreeView());
