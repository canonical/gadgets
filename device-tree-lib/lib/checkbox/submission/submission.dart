import 'package:freezed_annotation/freezed_annotation.dart';

import 'attachment_result.dart';
import 'device.dart';
import 'distribution.dart';
import 'dkms_info.dart';
import 'memory.dart';
import 'processor.dart';
import 'resource_result.dart';
import 'result.dart';
import 'snap_package.dart';
import 'deb_package.dart';

part 'submission.freezed.dart';
part 'submission.g.dart';

@freezed
class Submission with _$Submission {
  factory Submission({
    required String title,
    @JsonKey(name: 'testplan_id') required String testplanId,
    @JsonKey(name: 'custom_joblist') required bool customJoblist,
    required String description,
    required List<DebPackage> packages,
    @JsonKey(name: 'snap-packages') required List<SnapPackage> snapPackages,
    required Distribution distribution,
    required List<Result> results,
    @JsonKey(name: 'resource-results') List<ResourceResult>? resourceResults,
    @JsonKey(name: 'attachment-results')
        List<AttachmentResult>? attachmentResults,
    @JsonKey(name: 'rejected-jobs') required List<dynamic> rejectedJobs,
    @JsonKey(name: 'category_map') required Map<String, String> categoryMap,
    @JsonKey(name: 'dkms_info') DkmsInfo? dkmsInfo,
    required List<Device> devices,
    @JsonKey(name: 'modprobe-info') required List<dynamic> modprobeInfo,
    @JsonKey(name: 'pci_subsystem_id') dynamic pciSubsystemId,
    required String kernel,
    required String architecture,
    required Memory memory,
    required Processor processor,
    @JsonKey(name: 'kernel-cmdline') required String kernelCmdline,
  }) = _Submission;

  factory Submission.fromJson(Map<String, dynamic> json) =>
      _$SubmissionFromJson(json);
}
