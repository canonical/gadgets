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

enum ResultStatus {
  passed("pass"),
  skip("skip"),
  failed("fail");

  final String status;
  const ResultStatus(this.status);

  static String presentedValue(String value) {
    if (value == ResultOutcome.passed.outcome) {
      return "Passed";
    } else if (value == ResultOutcome.skipped.outcome) {
      return "Skipped";
    } else if (value == ResultOutcome.failed.outcome) {
      return "Failed";
    }
    return value;
  }
}

enum ResultOutcome {
  passed("pass"),
  skipped("skip"),
  notSupported("not-supported"),
  failed("fail");

  final String outcome;
  const ResultOutcome(this.outcome);

  static String presentedValue(String value) {
    if (value == ResultOutcome.passed.outcome) {
      return "Passed";
    } else if (value == ResultOutcome.skipped.outcome) {
      return "Skipped";
    } else if (value == ResultOutcome.notSupported.outcome) {
      return "Not Supported";
    } else if (value == ResultOutcome.failed.outcome) {
      return "Failed";
    }
    return value;
  }
}

enum ResultCertificationStatus {
  passed("pass"),
  optional("optional"),
  unspecified("unspecified"),
  failed("fail");

  final String status;
  const ResultCertificationStatus(this.status);

  static String presentedValue(String value) {
    if (value == ResultCertificationStatus.passed.status) {
      return "Passed";
    } else if (value == ResultCertificationStatus.optional.status) {
      return "Optional";
    } else if (value == ResultCertificationStatus.unspecified.status) {
      return "Unknown";
    } else if (value == ResultCertificationStatus.failed.status) {
      return "Failed";
    }
    return value;
  }
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

  factory Submission.fromJson(Map<String, dynamic> json) {
    return _$SubmissionFromJson(json);
  }
}

Iterable<Result> results(
    {required Submission submission, required KnownTestCategory category}) {
  return submission.results.where((result) => result.categoryId == category.id);
}
