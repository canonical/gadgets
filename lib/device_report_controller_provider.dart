import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'device_report_controller.dart';
import 'package:meta/meta.dart';

const reportPath = String.fromEnvironment("INXI_REPORT_FILE");

final deviceReportControllerProvider = Provider((_) =>
    DeviceReportController(inputPath: reportPath != "" ? reportPath : null));

@immutable
class NodeSelectionState {
  final String id;
  final bool isSelected;

  const NodeSelectionState({required this.id, required this.isSelected});

  NodeSelectionState copyWith({String? id, bool? isSelected}) =>
      NodeSelectionState(
          id: id ?? this.id, isSelected: isSelected ?? this.isSelected);
}
