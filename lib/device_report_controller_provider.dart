import 'package:hooks_riverpod/hooks_riverpod.dart';
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

final _selectionProvider = StateProvider<Map<String, bool>>((ref) => {});

final selectionStateProvider = StateProvider.family<bool?, String>(
    (ref, id) => ref.read(_selectionProvider)[id]);

// class NodeSelectionProvider
//    extends StateNotifierProviderFamily<NodeSelectionState, String, > {
// }
