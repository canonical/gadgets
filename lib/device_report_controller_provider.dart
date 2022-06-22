import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'device_report_controller.dart';

const reportPath = String.fromEnvironment("INXI_REPORT_FILE");

final deviceReportControllerProvider = Provider((_) =>
    DeviceReportController(inputPath: reportPath != "" ? reportPath : null));
