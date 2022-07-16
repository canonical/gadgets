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

enum KnownTestCategory {
  docker("com.canonical.certification::docker"),
  audio("com.canonical.plainbox::audio"),
  i2c("com.canonical.certification::i2c"),
  location("com.canonical.certification::location"),
  snapd("com.canonical.certification::snapd"),
  socketcan("com.canonical.certification::socketcan"),
  tpm2("com.canonical.certification::tpm2"),
  wwan("com.canonical.certification::wwan"),
  bluetooth("com.canonical.plainbox::bluetooth"),
  camera("com.canonical.plainbox::camera"),
  cpu("com.canonical.plainbox::cpu"),
  disk("com.canonical.plainbox::disk"),
  ethernet("com.canonical.plainbox::ethernet"),
  firmware("com.canonical.plainbox::firmware"),
  info("com.canonical.plainbox::info"),
  memory("com.canonical.plainbox::memory"),
  miscellanea("com.canonical.plainbox::miscellanea"),
  networking("com.canonical.plainbox::networking"),
  powerManagement("com.canonical.plainbox::power-management"),
  suspend("com.canonical.plainbox::suspend"),
  uncategorized("com.canonical.plainbox::uncategorised"),
  usb("com.canonical.plainbox::usb"),
  wireless("com.canonical.plainbox::wireless");

  final String id;
  const KnownTestCategory(this.id);
}

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

Iterable<Result> results(
    {required Submission submission, required KnownTestCategory category}) {
  return submission.results.where((result) => result.categoryId == category.id);
}
