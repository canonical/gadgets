import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inspector_gadget/device_report_controller.dart';
import 'package:inspector_gadget/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:inspector_gadget/device_report_controller_provider.dart';

ProviderScope providerOverride(
        {required String value, required Widget child}) =>
    ProviderScope(overrides: [
      deviceReportControllerProvider.overrideWithValue(DeviceReportController())
    ], child: child);

Widget deviceTreeView() => const ProviderScope(child: DeviceTreeView());
