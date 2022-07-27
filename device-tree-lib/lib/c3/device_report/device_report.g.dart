// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeviceReport _$$_DeviceReportFromJson(Map<String, dynamic> json) =>
    _$_DeviceReport(
      archName: json['arch_name'] as String?,
      canonicalId: json['canonical_id'],
      containerName: json['container_name'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      createdBy: json['created_by'],
      createdByUser: json['created_by_user'] as String?,
      customJoblist: json['custom_joblist'],
      description: json['description'],
      duration: json['duration'] as int?,
      failedTestCount: json['failed_test_count'] as int?,
      firmwareRevision: json['firmware_revision'],
      id: json['id'] as int?,
      isSpecification: json['is_specification'] as bool?,
      kernelCmdline: json['kernel_cmdline'],
      kernelVersion: json['kernel_version'] as String?,
      memorySwap: json['memory_swap'],
      memoryTotal: json['memory_total'],
      passedTestCount: json['passed_test_count'] as int?,
      pciSubsystem: json['pci_subsystem'],
      physicalMachine: json['physical_machine'] as String?,
      platformName: json['platform_name'] as String?,
      productName: json['product_name'],
      productVersion: json['product_version'],
      rejectedJobs: json['rejected_jobs'] as List<dynamic>?,
      releaseVersion: json['release_version'] as String?,
      resourceUri: json['resource_uri'] as String?,
      sharedHexr: json['shared_hexr'],
      signedOff: json['signed_off'] as bool?,
      signedOffAt: json['signed_off_at'],
      skippedTestCount: json['skipped_test_count'] as int?,
      source: json['source'] as String?,
      submissionDataUrl: json['submission_data_url'] as String?,
      submissionId: json['submission_id'],
      testCount: json['test_count'] as int?,
      testplanId: json['testplan_id'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      updatedBy: json['updated_by'],
      updatedByUser: json['updated_by_user'] as String?,
    );

Map<String, dynamic> _$$_DeviceReportToJson(_$_DeviceReport instance) =>
    <String, dynamic>{
      'arch_name': instance.archName,
      'canonical_id': instance.canonicalId,
      'container_name': instance.containerName,
      'created_at': instance.createdAt?.toIso8601String(),
      'created_by': instance.createdBy,
      'created_by_user': instance.createdByUser,
      'custom_joblist': instance.customJoblist,
      'description': instance.description,
      'duration': instance.duration,
      'failed_test_count': instance.failedTestCount,
      'firmware_revision': instance.firmwareRevision,
      'id': instance.id,
      'is_specification': instance.isSpecification,
      'kernel_cmdline': instance.kernelCmdline,
      'kernel_version': instance.kernelVersion,
      'memory_swap': instance.memorySwap,
      'memory_total': instance.memoryTotal,
      'passed_test_count': instance.passedTestCount,
      'pci_subsystem': instance.pciSubsystem,
      'physical_machine': instance.physicalMachine,
      'platform_name': instance.platformName,
      'product_name': instance.productName,
      'product_version': instance.productVersion,
      'rejected_jobs': instance.rejectedJobs,
      'release_version': instance.releaseVersion,
      'resource_uri': instance.resourceUri,
      'shared_hexr': instance.sharedHexr,
      'signed_off': instance.signedOff,
      'signed_off_at': instance.signedOffAt,
      'skipped_test_count': instance.skippedTestCount,
      'source': instance.source,
      'submission_data_url': instance.submissionDataUrl,
      'submission_id': instance.submissionId,
      'test_count': instance.testCount,
      'testplan_id': instance.testplanId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'updated_by': instance.updatedBy,
      'updated_by_user': instance.updatedByUser,
    };
