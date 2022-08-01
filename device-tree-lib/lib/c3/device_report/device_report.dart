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

part 'device_report.freezed.dart';
part 'device_report.g.dart';

@freezed
class DeviceReport with _$DeviceReport {
  factory DeviceReport({
    @JsonKey(name: 'arch_name') String? archName,
    @JsonKey(name: 'canonical_id') dynamic canonicalId,
    @JsonKey(name: 'container_name') dynamic containerName,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'created_by') dynamic createdBy,
    @JsonKey(name: 'created_by_user') String? createdByUser,
    @JsonKey(name: 'custom_joblist') dynamic customJoblist,
    dynamic description,
    int? duration,
    @JsonKey(name: 'failed_test_count') int? failedTestCount,
    @JsonKey(name: 'firmware_revision') dynamic firmwareRevision,
    int? id,
    @JsonKey(name: 'is_specification') bool? isSpecification,
    @JsonKey(name: 'kernel_cmdline') dynamic kernelCmdline,
    @JsonKey(name: 'kernel_version') String? kernelVersion,
    @JsonKey(name: 'memory_swap') dynamic memorySwap,
    @JsonKey(name: 'memory_total') dynamic memoryTotal,
    @JsonKey(name: 'passed_test_count') int? passedTestCount,
    @JsonKey(name: 'pci_subsystem') dynamic pciSubsystem,
    @JsonKey(name: 'physical_machine') String? physicalMachine,
    @JsonKey(name: 'platform_name') String? platformName,
    @JsonKey(name: 'product_name') dynamic productName,
    @JsonKey(name: 'product_version') dynamic productVersion,
    @JsonKey(name: 'rejected_jobs') List<dynamic>? rejectedJobs,
    @JsonKey(name: 'release_version') String? releaseVersion,
    @JsonKey(name: 'resource_uri') String? resourceUri,
    @JsonKey(name: 'shared_hexr') dynamic sharedHexr,
    @JsonKey(name: 'signed_off') bool? signedOff,
    @JsonKey(name: 'signed_off_at') dynamic signedOffAt,
    @JsonKey(name: 'skipped_test_count') int? skippedTestCount,
    String? source,
    @JsonKey(name: 'submission_data_url') String? submissionDataUrl,
    @JsonKey(name: 'submission_id') dynamic submissionId,
    @JsonKey(name: 'test_count') int? testCount,
    @JsonKey(name: 'testplan_id') String? testplanId,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'updated_by') dynamic updatedBy,
    @JsonKey(name: 'updated_by_user') String? updatedByUser,
  }) = _DeviceReport;

  factory DeviceReport.fromJson(Map<String, dynamic> json) =>
      _$DeviceReportFromJson(json);
}
