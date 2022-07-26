import 'package:device_tree_lib/inxi/executor/inxi_executor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gadgets/providers/submission_provider.dart';
import '../device_report_controller.dart';
import 'package:meta/meta.dart';

const reportPath = String.fromEnvironment("INXI_REPORT_FILE");

// FIXME: Make this dynamic and probably a future provider?
final deviceReportControllerProvider = Provider((_) {
  // FIXME: Introduce a HTTP driven way to get a device report.
  if (kIsWeb) {
    return DeviceReportController(inputPath: null);
  }
  if (reportPath != '') {
    return DeviceReportController(inputPath: reportPath);
  }
  return DeviceReportController(runInxi: true);
});

@immutable
class NodeSelectionState {
  final String id;
  final bool isSelected;

  const NodeSelectionState({required this.id, required this.isSelected});

  NodeSelectionState copyWith({String? id, bool? isSelected}) =>
      NodeSelectionState(
          id: id ?? this.id, isSelected: isSelected ?? this.isSelected);
}
