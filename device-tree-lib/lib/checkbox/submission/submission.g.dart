// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Submission _$$_SubmissionFromJson(Map<String, dynamic> json) =>
    _$_Submission(
      title: json['title'] as String,
      testplanId: json['testplan_id'] as String,
      customJoblist: json['custom_joblist'] as bool,
      description: json['description'] as String,
      packages: (json['packages'] as List<dynamic>)
          .map((e) => DebPackage.fromJson(e as Map<String, dynamic>))
          .toList(),
      snapPackages: (json['snap-packages'] as List<dynamic>)
          .map((e) => SnapPackage.fromJson(e as Map<String, dynamic>))
          .toList(),
      distribution:
          Distribution.fromJson(json['distribution'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceResults: (json['resource-results'] as List<dynamic>?)
          ?.map((e) => ResourceResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      attachmentResults: (json['attachment-results'] as List<dynamic>?)
          ?.map((e) => AttachmentResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      rejectedJobs: json['rejected-jobs'] as List<dynamic>,
      categoryMap: Map<String, String>.from(json['category_map'] as Map),
      dkmsInfo: json['dkms_info'] == null
          ? null
          : DkmsInfo.fromJson(json['dkms_info'] as Map<String, dynamic>),
      devices: (json['devices'] as List<dynamic>)
          .map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList(),
      modprobeInfo: json['modprobe-info'] as List<dynamic>?,
      pciSubsystemId: json['pci_subsystem_id'],
      kernel: json['kernel'] as String,
      architecture: json['architecture'] as String,
      memory: Memory.fromJson(json['memory'] as Map<String, dynamic>),
      processor: Processor.fromJson(json['processor'] as Map<String, dynamic>),
      kernelCmdline: json['kernel-cmdline'] as String?,
    );

Map<String, dynamic> _$$_SubmissionToJson(_$_Submission instance) =>
    <String, dynamic>{
      'title': instance.title,
      'testplan_id': instance.testplanId,
      'custom_joblist': instance.customJoblist,
      'description': instance.description,
      'packages': instance.packages.map((e) => e.toJson()).toList(),
      'snap-packages': instance.snapPackages.map((e) => e.toJson()).toList(),
      'distribution': instance.distribution.toJson(),
      'results': instance.results.map((e) => e.toJson()).toList(),
      'resource-results':
          instance.resourceResults?.map((e) => e.toJson()).toList(),
      'attachment-results':
          instance.attachmentResults?.map((e) => e.toJson()).toList(),
      'rejected-jobs': instance.rejectedJobs,
      'category_map': instance.categoryMap,
      'dkms_info': instance.dkmsInfo?.toJson(),
      'devices': instance.devices.map((e) => e.toJson()).toList(),
      'modprobe-info': instance.modprobeInfo,
      'pci_subsystem_id': instance.pciSubsystemId,
      'kernel': instance.kernel,
      'architecture': instance.architecture,
      'memory': instance.memory.toJson(),
      'processor': instance.processor.toJson(),
      'kernel-cmdline': instance.kernelCmdline,
    };
