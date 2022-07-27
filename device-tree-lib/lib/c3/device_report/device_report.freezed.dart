// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceReport _$DeviceReportFromJson(Map<String, dynamic> json) {
  return _DeviceReport.fromJson(json);
}

/// @nodoc
mixin _$DeviceReport {
  @JsonKey(name: 'arch_name')
  String? get archName => throw _privateConstructorUsedError;
  @JsonKey(name: 'canonical_id')
  dynamic get canonicalId => throw _privateConstructorUsedError;
  @JsonKey(name: 'container_name')
  dynamic get containerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  dynamic get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by_user')
  String? get createdByUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_joblist')
  dynamic get customJoblist => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'failed_test_count')
  int? get failedTestCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'firmware_revision')
  dynamic get firmwareRevision => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_specification')
  bool? get isSpecification => throw _privateConstructorUsedError;
  @JsonKey(name: 'kernel_cmdline')
  dynamic get kernelCmdline => throw _privateConstructorUsedError;
  @JsonKey(name: 'kernel_version')
  String? get kernelVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'memory_swap')
  dynamic get memorySwap => throw _privateConstructorUsedError;
  @JsonKey(name: 'memory_total')
  dynamic get memoryTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'passed_test_count')
  int? get passedTestCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'pci_subsystem')
  dynamic get pciSubsystem => throw _privateConstructorUsedError;
  @JsonKey(name: 'physical_machine')
  String? get physicalMachine => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform_name')
  String? get platformName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  dynamic get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_version')
  dynamic get productVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'rejected_jobs')
  List<dynamic>? get rejectedJobs => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_version')
  String? get releaseVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'resource_uri')
  String? get resourceUri => throw _privateConstructorUsedError;
  @JsonKey(name: 'shared_hexr')
  dynamic get sharedHexr => throw _privateConstructorUsedError;
  @JsonKey(name: 'signed_off')
  bool? get signedOff => throw _privateConstructorUsedError;
  @JsonKey(name: 'signed_off_at')
  dynamic get signedOffAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'skipped_test_count')
  int? get skippedTestCount => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'submission_data_url')
  String? get submissionDataUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'submission_id')
  dynamic get submissionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'test_count')
  int? get testCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'testplan_id')
  String? get testplanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_by')
  dynamic get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_by_user')
  String? get updatedByUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceReportCopyWith<DeviceReport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceReportCopyWith<$Res> {
  factory $DeviceReportCopyWith(
          DeviceReport value, $Res Function(DeviceReport) then) =
      _$DeviceReportCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'arch_name') String? archName,
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
      @JsonKey(name: 'updated_by_user') String? updatedByUser});
}

/// @nodoc
class _$DeviceReportCopyWithImpl<$Res> implements $DeviceReportCopyWith<$Res> {
  _$DeviceReportCopyWithImpl(this._value, this._then);

  final DeviceReport _value;
  // ignore: unused_field
  final $Res Function(DeviceReport) _then;

  @override
  $Res call({
    Object? archName = freezed,
    Object? canonicalId = freezed,
    Object? containerName = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
    Object? createdByUser = freezed,
    Object? customJoblist = freezed,
    Object? description = freezed,
    Object? duration = freezed,
    Object? failedTestCount = freezed,
    Object? firmwareRevision = freezed,
    Object? id = freezed,
    Object? isSpecification = freezed,
    Object? kernelCmdline = freezed,
    Object? kernelVersion = freezed,
    Object? memorySwap = freezed,
    Object? memoryTotal = freezed,
    Object? passedTestCount = freezed,
    Object? pciSubsystem = freezed,
    Object? physicalMachine = freezed,
    Object? platformName = freezed,
    Object? productName = freezed,
    Object? productVersion = freezed,
    Object? rejectedJobs = freezed,
    Object? releaseVersion = freezed,
    Object? resourceUri = freezed,
    Object? sharedHexr = freezed,
    Object? signedOff = freezed,
    Object? signedOffAt = freezed,
    Object? skippedTestCount = freezed,
    Object? source = freezed,
    Object? submissionDataUrl = freezed,
    Object? submissionId = freezed,
    Object? testCount = freezed,
    Object? testplanId = freezed,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? updatedByUser = freezed,
  }) {
    return _then(_value.copyWith(
      archName: archName == freezed
          ? _value.archName
          : archName // ignore: cast_nullable_to_non_nullable
              as String?,
      canonicalId: canonicalId == freezed
          ? _value.canonicalId
          : canonicalId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      containerName: containerName == freezed
          ? _value.containerName
          : containerName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdByUser: createdByUser == freezed
          ? _value.createdByUser
          : createdByUser // ignore: cast_nullable_to_non_nullable
              as String?,
      customJoblist: customJoblist == freezed
          ? _value.customJoblist
          : customJoblist // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      failedTestCount: failedTestCount == freezed
          ? _value.failedTestCount
          : failedTestCount // ignore: cast_nullable_to_non_nullable
              as int?,
      firmwareRevision: firmwareRevision == freezed
          ? _value.firmwareRevision
          : firmwareRevision // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isSpecification: isSpecification == freezed
          ? _value.isSpecification
          : isSpecification // ignore: cast_nullable_to_non_nullable
              as bool?,
      kernelCmdline: kernelCmdline == freezed
          ? _value.kernelCmdline
          : kernelCmdline // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kernelVersion: kernelVersion == freezed
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      memorySwap: memorySwap == freezed
          ? _value.memorySwap
          : memorySwap // ignore: cast_nullable_to_non_nullable
              as dynamic,
      memoryTotal: memoryTotal == freezed
          ? _value.memoryTotal
          : memoryTotal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      passedTestCount: passedTestCount == freezed
          ? _value.passedTestCount
          : passedTestCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pciSubsystem: pciSubsystem == freezed
          ? _value.pciSubsystem
          : pciSubsystem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      physicalMachine: physicalMachine == freezed
          ? _value.physicalMachine
          : physicalMachine // ignore: cast_nullable_to_non_nullable
              as String?,
      platformName: platformName == freezed
          ? _value.platformName
          : platformName // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productVersion: productVersion == freezed
          ? _value.productVersion
          : productVersion // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rejectedJobs: rejectedJobs == freezed
          ? _value.rejectedJobs
          : rejectedJobs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      releaseVersion: releaseVersion == freezed
          ? _value.releaseVersion
          : releaseVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceUri: resourceUri == freezed
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      sharedHexr: sharedHexr == freezed
          ? _value.sharedHexr
          : sharedHexr // ignore: cast_nullable_to_non_nullable
              as dynamic,
      signedOff: signedOff == freezed
          ? _value.signedOff
          : signedOff // ignore: cast_nullable_to_non_nullable
              as bool?,
      signedOffAt: signedOffAt == freezed
          ? _value.signedOffAt
          : signedOffAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      skippedTestCount: skippedTestCount == freezed
          ? _value.skippedTestCount
          : skippedTestCount // ignore: cast_nullable_to_non_nullable
              as int?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      submissionDataUrl: submissionDataUrl == freezed
          ? _value.submissionDataUrl
          : submissionDataUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      submissionId: submissionId == freezed
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      testCount: testCount == freezed
          ? _value.testCount
          : testCount // ignore: cast_nullable_to_non_nullable
              as int?,
      testplanId: testplanId == freezed
          ? _value.testplanId
          : testplanId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedByUser: updatedByUser == freezed
          ? _value.updatedByUser
          : updatedByUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DeviceReportCopyWith<$Res>
    implements $DeviceReportCopyWith<$Res> {
  factory _$$_DeviceReportCopyWith(
          _$_DeviceReport value, $Res Function(_$_DeviceReport) then) =
      __$$_DeviceReportCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'arch_name') String? archName,
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
      @JsonKey(name: 'updated_by_user') String? updatedByUser});
}

/// @nodoc
class __$$_DeviceReportCopyWithImpl<$Res>
    extends _$DeviceReportCopyWithImpl<$Res>
    implements _$$_DeviceReportCopyWith<$Res> {
  __$$_DeviceReportCopyWithImpl(
      _$_DeviceReport _value, $Res Function(_$_DeviceReport) _then)
      : super(_value, (v) => _then(v as _$_DeviceReport));

  @override
  _$_DeviceReport get _value => super._value as _$_DeviceReport;

  @override
  $Res call({
    Object? archName = freezed,
    Object? canonicalId = freezed,
    Object? containerName = freezed,
    Object? createdAt = freezed,
    Object? createdBy = freezed,
    Object? createdByUser = freezed,
    Object? customJoblist = freezed,
    Object? description = freezed,
    Object? duration = freezed,
    Object? failedTestCount = freezed,
    Object? firmwareRevision = freezed,
    Object? id = freezed,
    Object? isSpecification = freezed,
    Object? kernelCmdline = freezed,
    Object? kernelVersion = freezed,
    Object? memorySwap = freezed,
    Object? memoryTotal = freezed,
    Object? passedTestCount = freezed,
    Object? pciSubsystem = freezed,
    Object? physicalMachine = freezed,
    Object? platformName = freezed,
    Object? productName = freezed,
    Object? productVersion = freezed,
    Object? rejectedJobs = freezed,
    Object? releaseVersion = freezed,
    Object? resourceUri = freezed,
    Object? sharedHexr = freezed,
    Object? signedOff = freezed,
    Object? signedOffAt = freezed,
    Object? skippedTestCount = freezed,
    Object? source = freezed,
    Object? submissionDataUrl = freezed,
    Object? submissionId = freezed,
    Object? testCount = freezed,
    Object? testplanId = freezed,
    Object? updatedAt = freezed,
    Object? updatedBy = freezed,
    Object? updatedByUser = freezed,
  }) {
    return _then(_$_DeviceReport(
      archName: archName == freezed
          ? _value.archName
          : archName // ignore: cast_nullable_to_non_nullable
              as String?,
      canonicalId: canonicalId == freezed
          ? _value.canonicalId
          : canonicalId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      containerName: containerName == freezed
          ? _value.containerName
          : containerName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdBy: createdBy == freezed
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdByUser: createdByUser == freezed
          ? _value.createdByUser
          : createdByUser // ignore: cast_nullable_to_non_nullable
              as String?,
      customJoblist: customJoblist == freezed
          ? _value.customJoblist
          : customJoblist // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      failedTestCount: failedTestCount == freezed
          ? _value.failedTestCount
          : failedTestCount // ignore: cast_nullable_to_non_nullable
              as int?,
      firmwareRevision: firmwareRevision == freezed
          ? _value.firmwareRevision
          : firmwareRevision // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isSpecification: isSpecification == freezed
          ? _value.isSpecification
          : isSpecification // ignore: cast_nullable_to_non_nullable
              as bool?,
      kernelCmdline: kernelCmdline == freezed
          ? _value.kernelCmdline
          : kernelCmdline // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kernelVersion: kernelVersion == freezed
          ? _value.kernelVersion
          : kernelVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      memorySwap: memorySwap == freezed
          ? _value.memorySwap
          : memorySwap // ignore: cast_nullable_to_non_nullable
              as dynamic,
      memoryTotal: memoryTotal == freezed
          ? _value.memoryTotal
          : memoryTotal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      passedTestCount: passedTestCount == freezed
          ? _value.passedTestCount
          : passedTestCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pciSubsystem: pciSubsystem == freezed
          ? _value.pciSubsystem
          : pciSubsystem // ignore: cast_nullable_to_non_nullable
              as dynamic,
      physicalMachine: physicalMachine == freezed
          ? _value.physicalMachine
          : physicalMachine // ignore: cast_nullable_to_non_nullable
              as String?,
      platformName: platformName == freezed
          ? _value.platformName
          : platformName // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productVersion: productVersion == freezed
          ? _value.productVersion
          : productVersion // ignore: cast_nullable_to_non_nullable
              as dynamic,
      rejectedJobs: rejectedJobs == freezed
          ? _value._rejectedJobs
          : rejectedJobs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      releaseVersion: releaseVersion == freezed
          ? _value.releaseVersion
          : releaseVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      resourceUri: resourceUri == freezed
          ? _value.resourceUri
          : resourceUri // ignore: cast_nullable_to_non_nullable
              as String?,
      sharedHexr: sharedHexr == freezed
          ? _value.sharedHexr
          : sharedHexr // ignore: cast_nullable_to_non_nullable
              as dynamic,
      signedOff: signedOff == freezed
          ? _value.signedOff
          : signedOff // ignore: cast_nullable_to_non_nullable
              as bool?,
      signedOffAt: signedOffAt == freezed
          ? _value.signedOffAt
          : signedOffAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      skippedTestCount: skippedTestCount == freezed
          ? _value.skippedTestCount
          : skippedTestCount // ignore: cast_nullable_to_non_nullable
              as int?,
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      submissionDataUrl: submissionDataUrl == freezed
          ? _value.submissionDataUrl
          : submissionDataUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      submissionId: submissionId == freezed
          ? _value.submissionId
          : submissionId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      testCount: testCount == freezed
          ? _value.testCount
          : testCount // ignore: cast_nullable_to_non_nullable
              as int?,
      testplanId: testplanId == freezed
          ? _value.testplanId
          : testplanId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedBy: updatedBy == freezed
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updatedByUser: updatedByUser == freezed
          ? _value.updatedByUser
          : updatedByUser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceReport implements _DeviceReport {
  _$_DeviceReport(
      {@JsonKey(name: 'arch_name') this.archName,
      @JsonKey(name: 'canonical_id') this.canonicalId,
      @JsonKey(name: 'container_name') this.containerName,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'created_by') this.createdBy,
      @JsonKey(name: 'created_by_user') this.createdByUser,
      @JsonKey(name: 'custom_joblist') this.customJoblist,
      this.description,
      this.duration,
      @JsonKey(name: 'failed_test_count') this.failedTestCount,
      @JsonKey(name: 'firmware_revision') this.firmwareRevision,
      this.id,
      @JsonKey(name: 'is_specification') this.isSpecification,
      @JsonKey(name: 'kernel_cmdline') this.kernelCmdline,
      @JsonKey(name: 'kernel_version') this.kernelVersion,
      @JsonKey(name: 'memory_swap') this.memorySwap,
      @JsonKey(name: 'memory_total') this.memoryTotal,
      @JsonKey(name: 'passed_test_count') this.passedTestCount,
      @JsonKey(name: 'pci_subsystem') this.pciSubsystem,
      @JsonKey(name: 'physical_machine') this.physicalMachine,
      @JsonKey(name: 'platform_name') this.platformName,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_version') this.productVersion,
      @JsonKey(name: 'rejected_jobs') final List<dynamic>? rejectedJobs,
      @JsonKey(name: 'release_version') this.releaseVersion,
      @JsonKey(name: 'resource_uri') this.resourceUri,
      @JsonKey(name: 'shared_hexr') this.sharedHexr,
      @JsonKey(name: 'signed_off') this.signedOff,
      @JsonKey(name: 'signed_off_at') this.signedOffAt,
      @JsonKey(name: 'skipped_test_count') this.skippedTestCount,
      this.source,
      @JsonKey(name: 'submission_data_url') this.submissionDataUrl,
      @JsonKey(name: 'submission_id') this.submissionId,
      @JsonKey(name: 'test_count') this.testCount,
      @JsonKey(name: 'testplan_id') this.testplanId,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'updated_by') this.updatedBy,
      @JsonKey(name: 'updated_by_user') this.updatedByUser})
      : _rejectedJobs = rejectedJobs;

  factory _$_DeviceReport.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceReportFromJson(json);

  @override
  @JsonKey(name: 'arch_name')
  final String? archName;
  @override
  @JsonKey(name: 'canonical_id')
  final dynamic canonicalId;
  @override
  @JsonKey(name: 'container_name')
  final dynamic containerName;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'created_by')
  final dynamic createdBy;
  @override
  @JsonKey(name: 'created_by_user')
  final String? createdByUser;
  @override
  @JsonKey(name: 'custom_joblist')
  final dynamic customJoblist;
  @override
  final dynamic description;
  @override
  final int? duration;
  @override
  @JsonKey(name: 'failed_test_count')
  final int? failedTestCount;
  @override
  @JsonKey(name: 'firmware_revision')
  final dynamic firmwareRevision;
  @override
  final int? id;
  @override
  @JsonKey(name: 'is_specification')
  final bool? isSpecification;
  @override
  @JsonKey(name: 'kernel_cmdline')
  final dynamic kernelCmdline;
  @override
  @JsonKey(name: 'kernel_version')
  final String? kernelVersion;
  @override
  @JsonKey(name: 'memory_swap')
  final dynamic memorySwap;
  @override
  @JsonKey(name: 'memory_total')
  final dynamic memoryTotal;
  @override
  @JsonKey(name: 'passed_test_count')
  final int? passedTestCount;
  @override
  @JsonKey(name: 'pci_subsystem')
  final dynamic pciSubsystem;
  @override
  @JsonKey(name: 'physical_machine')
  final String? physicalMachine;
  @override
  @JsonKey(name: 'platform_name')
  final String? platformName;
  @override
  @JsonKey(name: 'product_name')
  final dynamic productName;
  @override
  @JsonKey(name: 'product_version')
  final dynamic productVersion;
  final List<dynamic>? _rejectedJobs;
  @override
  @JsonKey(name: 'rejected_jobs')
  List<dynamic>? get rejectedJobs {
    final value = _rejectedJobs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'release_version')
  final String? releaseVersion;
  @override
  @JsonKey(name: 'resource_uri')
  final String? resourceUri;
  @override
  @JsonKey(name: 'shared_hexr')
  final dynamic sharedHexr;
  @override
  @JsonKey(name: 'signed_off')
  final bool? signedOff;
  @override
  @JsonKey(name: 'signed_off_at')
  final dynamic signedOffAt;
  @override
  @JsonKey(name: 'skipped_test_count')
  final int? skippedTestCount;
  @override
  final String? source;
  @override
  @JsonKey(name: 'submission_data_url')
  final String? submissionDataUrl;
  @override
  @JsonKey(name: 'submission_id')
  final dynamic submissionId;
  @override
  @JsonKey(name: 'test_count')
  final int? testCount;
  @override
  @JsonKey(name: 'testplan_id')
  final String? testplanId;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'updated_by')
  final dynamic updatedBy;
  @override
  @JsonKey(name: 'updated_by_user')
  final String? updatedByUser;

  @override
  String toString() {
    return 'DeviceReport(archName: $archName, canonicalId: $canonicalId, containerName: $containerName, createdAt: $createdAt, createdBy: $createdBy, createdByUser: $createdByUser, customJoblist: $customJoblist, description: $description, duration: $duration, failedTestCount: $failedTestCount, firmwareRevision: $firmwareRevision, id: $id, isSpecification: $isSpecification, kernelCmdline: $kernelCmdline, kernelVersion: $kernelVersion, memorySwap: $memorySwap, memoryTotal: $memoryTotal, passedTestCount: $passedTestCount, pciSubsystem: $pciSubsystem, physicalMachine: $physicalMachine, platformName: $platformName, productName: $productName, productVersion: $productVersion, rejectedJobs: $rejectedJobs, releaseVersion: $releaseVersion, resourceUri: $resourceUri, sharedHexr: $sharedHexr, signedOff: $signedOff, signedOffAt: $signedOffAt, skippedTestCount: $skippedTestCount, source: $source, submissionDataUrl: $submissionDataUrl, submissionId: $submissionId, testCount: $testCount, testplanId: $testplanId, updatedAt: $updatedAt, updatedBy: $updatedBy, updatedByUser: $updatedByUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceReport &&
            const DeepCollectionEquality().equals(other.archName, archName) &&
            const DeepCollectionEquality()
                .equals(other.canonicalId, canonicalId) &&
            const DeepCollectionEquality()
                .equals(other.containerName, containerName) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.createdBy, createdBy) &&
            const DeepCollectionEquality()
                .equals(other.createdByUser, createdByUser) &&
            const DeepCollectionEquality()
                .equals(other.customJoblist, customJoblist) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.failedTestCount, failedTestCount) &&
            const DeepCollectionEquality()
                .equals(other.firmwareRevision, firmwareRevision) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.isSpecification, isSpecification) &&
            const DeepCollectionEquality()
                .equals(other.kernelCmdline, kernelCmdline) &&
            const DeepCollectionEquality()
                .equals(other.kernelVersion, kernelVersion) &&
            const DeepCollectionEquality()
                .equals(other.memorySwap, memorySwap) &&
            const DeepCollectionEquality()
                .equals(other.memoryTotal, memoryTotal) &&
            const DeepCollectionEquality()
                .equals(other.passedTestCount, passedTestCount) &&
            const DeepCollectionEquality()
                .equals(other.pciSubsystem, pciSubsystem) &&
            const DeepCollectionEquality()
                .equals(other.physicalMachine, physicalMachine) &&
            const DeepCollectionEquality()
                .equals(other.platformName, platformName) &&
            const DeepCollectionEquality()
                .equals(other.productName, productName) &&
            const DeepCollectionEquality()
                .equals(other.productVersion, productVersion) &&
            const DeepCollectionEquality()
                .equals(other._rejectedJobs, _rejectedJobs) &&
            const DeepCollectionEquality()
                .equals(other.releaseVersion, releaseVersion) &&
            const DeepCollectionEquality()
                .equals(other.resourceUri, resourceUri) &&
            const DeepCollectionEquality()
                .equals(other.sharedHexr, sharedHexr) &&
            const DeepCollectionEquality().equals(other.signedOff, signedOff) &&
            const DeepCollectionEquality()
                .equals(other.signedOffAt, signedOffAt) &&
            const DeepCollectionEquality()
                .equals(other.skippedTestCount, skippedTestCount) &&
            const DeepCollectionEquality().equals(other.source, source) &&
            const DeepCollectionEquality()
                .equals(other.submissionDataUrl, submissionDataUrl) &&
            const DeepCollectionEquality()
                .equals(other.submissionId, submissionId) &&
            const DeepCollectionEquality().equals(other.testCount, testCount) &&
            const DeepCollectionEquality()
                .equals(other.testplanId, testplanId) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.updatedBy, updatedBy) &&
            const DeepCollectionEquality()
                .equals(other.updatedByUser, updatedByUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(archName),
        const DeepCollectionEquality().hash(canonicalId),
        const DeepCollectionEquality().hash(containerName),
        const DeepCollectionEquality().hash(createdAt),
        const DeepCollectionEquality().hash(createdBy),
        const DeepCollectionEquality().hash(createdByUser),
        const DeepCollectionEquality().hash(customJoblist),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(duration),
        const DeepCollectionEquality().hash(failedTestCount),
        const DeepCollectionEquality().hash(firmwareRevision),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(isSpecification),
        const DeepCollectionEquality().hash(kernelCmdline),
        const DeepCollectionEquality().hash(kernelVersion),
        const DeepCollectionEquality().hash(memorySwap),
        const DeepCollectionEquality().hash(memoryTotal),
        const DeepCollectionEquality().hash(passedTestCount),
        const DeepCollectionEquality().hash(pciSubsystem),
        const DeepCollectionEquality().hash(physicalMachine),
        const DeepCollectionEquality().hash(platformName),
        const DeepCollectionEquality().hash(productName),
        const DeepCollectionEquality().hash(productVersion),
        const DeepCollectionEquality().hash(_rejectedJobs),
        const DeepCollectionEquality().hash(releaseVersion),
        const DeepCollectionEquality().hash(resourceUri),
        const DeepCollectionEquality().hash(sharedHexr),
        const DeepCollectionEquality().hash(signedOff),
        const DeepCollectionEquality().hash(signedOffAt),
        const DeepCollectionEquality().hash(skippedTestCount),
        const DeepCollectionEquality().hash(source),
        const DeepCollectionEquality().hash(submissionDataUrl),
        const DeepCollectionEquality().hash(submissionId),
        const DeepCollectionEquality().hash(testCount),
        const DeepCollectionEquality().hash(testplanId),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(updatedBy),
        const DeepCollectionEquality().hash(updatedByUser)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_DeviceReportCopyWith<_$_DeviceReport> get copyWith =>
      __$$_DeviceReportCopyWithImpl<_$_DeviceReport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceReportToJson(
      this,
    );
  }
}

abstract class _DeviceReport implements DeviceReport {
  factory _DeviceReport(
          {@JsonKey(name: 'arch_name') final String? archName,
          @JsonKey(name: 'canonical_id') final dynamic canonicalId,
          @JsonKey(name: 'container_name') final dynamic containerName,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'created_by') final dynamic createdBy,
          @JsonKey(name: 'created_by_user') final String? createdByUser,
          @JsonKey(name: 'custom_joblist') final dynamic customJoblist,
          final dynamic description,
          final int? duration,
          @JsonKey(name: 'failed_test_count') final int? failedTestCount,
          @JsonKey(name: 'firmware_revision') final dynamic firmwareRevision,
          final int? id,
          @JsonKey(name: 'is_specification') final bool? isSpecification,
          @JsonKey(name: 'kernel_cmdline') final dynamic kernelCmdline,
          @JsonKey(name: 'kernel_version') final String? kernelVersion,
          @JsonKey(name: 'memory_swap') final dynamic memorySwap,
          @JsonKey(name: 'memory_total') final dynamic memoryTotal,
          @JsonKey(name: 'passed_test_count') final int? passedTestCount,
          @JsonKey(name: 'pci_subsystem') final dynamic pciSubsystem,
          @JsonKey(name: 'physical_machine') final String? physicalMachine,
          @JsonKey(name: 'platform_name') final String? platformName,
          @JsonKey(name: 'product_name') final dynamic productName,
          @JsonKey(name: 'product_version') final dynamic productVersion,
          @JsonKey(name: 'rejected_jobs') final List<dynamic>? rejectedJobs,
          @JsonKey(name: 'release_version') final String? releaseVersion,
          @JsonKey(name: 'resource_uri') final String? resourceUri,
          @JsonKey(name: 'shared_hexr') final dynamic sharedHexr,
          @JsonKey(name: 'signed_off') final bool? signedOff,
          @JsonKey(name: 'signed_off_at') final dynamic signedOffAt,
          @JsonKey(name: 'skipped_test_count') final int? skippedTestCount,
          final String? source,
          @JsonKey(name: 'submission_data_url') final String? submissionDataUrl,
          @JsonKey(name: 'submission_id') final dynamic submissionId,
          @JsonKey(name: 'test_count') final int? testCount,
          @JsonKey(name: 'testplan_id') final String? testplanId,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'updated_by') final dynamic updatedBy,
          @JsonKey(name: 'updated_by_user') final String? updatedByUser}) =
      _$_DeviceReport;

  factory _DeviceReport.fromJson(Map<String, dynamic> json) =
      _$_DeviceReport.fromJson;

  @override
  @JsonKey(name: 'arch_name')
  String? get archName;
  @override
  @JsonKey(name: 'canonical_id')
  dynamic get canonicalId;
  @override
  @JsonKey(name: 'container_name')
  dynamic get containerName;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'created_by')
  dynamic get createdBy;
  @override
  @JsonKey(name: 'created_by_user')
  String? get createdByUser;
  @override
  @JsonKey(name: 'custom_joblist')
  dynamic get customJoblist;
  @override
  dynamic get description;
  @override
  int? get duration;
  @override
  @JsonKey(name: 'failed_test_count')
  int? get failedTestCount;
  @override
  @JsonKey(name: 'firmware_revision')
  dynamic get firmwareRevision;
  @override
  int? get id;
  @override
  @JsonKey(name: 'is_specification')
  bool? get isSpecification;
  @override
  @JsonKey(name: 'kernel_cmdline')
  dynamic get kernelCmdline;
  @override
  @JsonKey(name: 'kernel_version')
  String? get kernelVersion;
  @override
  @JsonKey(name: 'memory_swap')
  dynamic get memorySwap;
  @override
  @JsonKey(name: 'memory_total')
  dynamic get memoryTotal;
  @override
  @JsonKey(name: 'passed_test_count')
  int? get passedTestCount;
  @override
  @JsonKey(name: 'pci_subsystem')
  dynamic get pciSubsystem;
  @override
  @JsonKey(name: 'physical_machine')
  String? get physicalMachine;
  @override
  @JsonKey(name: 'platform_name')
  String? get platformName;
  @override
  @JsonKey(name: 'product_name')
  dynamic get productName;
  @override
  @JsonKey(name: 'product_version')
  dynamic get productVersion;
  @override
  @JsonKey(name: 'rejected_jobs')
  List<dynamic>? get rejectedJobs;
  @override
  @JsonKey(name: 'release_version')
  String? get releaseVersion;
  @override
  @JsonKey(name: 'resource_uri')
  String? get resourceUri;
  @override
  @JsonKey(name: 'shared_hexr')
  dynamic get sharedHexr;
  @override
  @JsonKey(name: 'signed_off')
  bool? get signedOff;
  @override
  @JsonKey(name: 'signed_off_at')
  dynamic get signedOffAt;
  @override
  @JsonKey(name: 'skipped_test_count')
  int? get skippedTestCount;
  @override
  String? get source;
  @override
  @JsonKey(name: 'submission_data_url')
  String? get submissionDataUrl;
  @override
  @JsonKey(name: 'submission_id')
  dynamic get submissionId;
  @override
  @JsonKey(name: 'test_count')
  int? get testCount;
  @override
  @JsonKey(name: 'testplan_id')
  String? get testplanId;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'updated_by')
  dynamic get updatedBy;
  @override
  @JsonKey(name: 'updated_by_user')
  String? get updatedByUser;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceReportCopyWith<_$_DeviceReport> get copyWith =>
      throw _privateConstructorUsedError;
}
