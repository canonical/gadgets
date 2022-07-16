// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'submission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Submission _$SubmissionFromJson(Map<String, dynamic> json) {
  return _Submission.fromJson(json);
}

/// @nodoc
mixin _$Submission {
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'testplan_id')
  String get testplanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'custom_joblist')
  bool get customJoblist => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<DebPackage> get packages => throw _privateConstructorUsedError;
  @JsonKey(name: 'snap-packages')
  List<SnapPackage> get snapPackages => throw _privateConstructorUsedError;
  Distribution? get distribution => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'resource-results')
  List<ResourceResult>? get resourceResults =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'attachment-results')
  List<AttachmentResult>? get attachmentResults =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'rejected-jobs')
  List<dynamic>? get rejectedJobs => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_map')
  Map<String, String> get categoryMap => throw _privateConstructorUsedError;
  @JsonKey(name: 'dkms_info')
  DkmsInfo? get dkmsInfo => throw _privateConstructorUsedError;
  List<Device>? get devices => throw _privateConstructorUsedError;
  @JsonKey(name: 'modprobe-info')
  List<dynamic>? get modprobeInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'pci_subsystem_id')
  dynamic get pciSubsystemId => throw _privateConstructorUsedError;
  String? get kernel => throw _privateConstructorUsedError;
  String? get architecture => throw _privateConstructorUsedError;
  Memory? get memory => throw _privateConstructorUsedError;
  Processor? get processor => throw _privateConstructorUsedError;
  @JsonKey(name: 'kernel-cmdline')
  String? get kernelCmdline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmissionCopyWith<Submission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionCopyWith<$Res> {
  factory $SubmissionCopyWith(
          Submission value, $Res Function(Submission) then) =
      _$SubmissionCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      @JsonKey(name: 'testplan_id')
          String testplanId,
      @JsonKey(name: 'custom_joblist')
          bool customJoblist,
      String? description,
      List<DebPackage> packages,
      @JsonKey(name: 'snap-packages')
          List<SnapPackage> snapPackages,
      Distribution? distribution,
      List<Result>? results,
      @JsonKey(name: 'resource-results')
          List<ResourceResult>? resourceResults,
      @JsonKey(name: 'attachment-results')
          List<AttachmentResult>? attachmentResults,
      @JsonKey(name: 'rejected-jobs')
          List<dynamic>? rejectedJobs,
      @JsonKey(name: 'category_map')
          Map<String, String> categoryMap,
      @JsonKey(name: 'dkms_info')
          DkmsInfo? dkmsInfo,
      List<Device>? devices,
      @JsonKey(name: 'modprobe-info')
          List<dynamic>? modprobeInfo,
      @JsonKey(name: 'pci_subsystem_id')
          dynamic pciSubsystemId,
      String? kernel,
      String? architecture,
      Memory? memory,
      Processor? processor,
      @JsonKey(name: 'kernel-cmdline')
          String? kernelCmdline});

  $DistributionCopyWith<$Res>? get distribution;
  $MemoryCopyWith<$Res>? get memory;
  $ProcessorCopyWith<$Res>? get processor;
}

/// @nodoc
class _$SubmissionCopyWithImpl<$Res> implements $SubmissionCopyWith<$Res> {
  _$SubmissionCopyWithImpl(this._value, this._then);

  final Submission _value;
  // ignore: unused_field
  final $Res Function(Submission) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? testplanId = freezed,
    Object? customJoblist = freezed,
    Object? description = freezed,
    Object? packages = freezed,
    Object? snapPackages = freezed,
    Object? distribution = freezed,
    Object? results = freezed,
    Object? resourceResults = freezed,
    Object? attachmentResults = freezed,
    Object? rejectedJobs = freezed,
    Object? categoryMap = freezed,
    Object? dkmsInfo = freezed,
    Object? devices = freezed,
    Object? modprobeInfo = freezed,
    Object? pciSubsystemId = freezed,
    Object? kernel = freezed,
    Object? architecture = freezed,
    Object? memory = freezed,
    Object? processor = freezed,
    Object? kernelCmdline = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      testplanId: testplanId == freezed
          ? _value.testplanId
          : testplanId // ignore: cast_nullable_to_non_nullable
              as String,
      customJoblist: customJoblist == freezed
          ? _value.customJoblist
          : customJoblist // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<DebPackage>,
      snapPackages: snapPackages == freezed
          ? _value.snapPackages
          : snapPackages // ignore: cast_nullable_to_non_nullable
              as List<SnapPackage>,
      distribution: distribution == freezed
          ? _value.distribution
          : distribution // ignore: cast_nullable_to_non_nullable
              as Distribution?,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      resourceResults: resourceResults == freezed
          ? _value.resourceResults
          : resourceResults // ignore: cast_nullable_to_non_nullable
              as List<ResourceResult>?,
      attachmentResults: attachmentResults == freezed
          ? _value.attachmentResults
          : attachmentResults // ignore: cast_nullable_to_non_nullable
              as List<AttachmentResult>?,
      rejectedJobs: rejectedJobs == freezed
          ? _value.rejectedJobs
          : rejectedJobs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      categoryMap: categoryMap == freezed
          ? _value.categoryMap
          : categoryMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      dkmsInfo: dkmsInfo == freezed
          ? _value.dkmsInfo
          : dkmsInfo // ignore: cast_nullable_to_non_nullable
              as DkmsInfo?,
      devices: devices == freezed
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<Device>?,
      modprobeInfo: modprobeInfo == freezed
          ? _value.modprobeInfo
          : modprobeInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pciSubsystemId: pciSubsystemId == freezed
          ? _value.pciSubsystemId
          : pciSubsystemId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kernel: kernel == freezed
          ? _value.kernel
          : kernel // ignore: cast_nullable_to_non_nullable
              as String?,
      architecture: architecture == freezed
          ? _value.architecture
          : architecture // ignore: cast_nullable_to_non_nullable
              as String?,
      memory: memory == freezed
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as Memory?,
      processor: processor == freezed
          ? _value.processor
          : processor // ignore: cast_nullable_to_non_nullable
              as Processor?,
      kernelCmdline: kernelCmdline == freezed
          ? _value.kernelCmdline
          : kernelCmdline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $DistributionCopyWith<$Res>? get distribution {
    if (_value.distribution == null) {
      return null;
    }

    return $DistributionCopyWith<$Res>(_value.distribution!, (value) {
      return _then(_value.copyWith(distribution: value));
    });
  }

  @override
  $MemoryCopyWith<$Res>? get memory {
    if (_value.memory == null) {
      return null;
    }

    return $MemoryCopyWith<$Res>(_value.memory!, (value) {
      return _then(_value.copyWith(memory: value));
    });
  }

  @override
  $ProcessorCopyWith<$Res>? get processor {
    if (_value.processor == null) {
      return null;
    }

    return $ProcessorCopyWith<$Res>(_value.processor!, (value) {
      return _then(_value.copyWith(processor: value));
    });
  }
}

/// @nodoc
abstract class _$$_SubmissionCopyWith<$Res>
    implements $SubmissionCopyWith<$Res> {
  factory _$$_SubmissionCopyWith(
          _$_Submission value, $Res Function(_$_Submission) then) =
      __$$_SubmissionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      @JsonKey(name: 'testplan_id')
          String testplanId,
      @JsonKey(name: 'custom_joblist')
          bool customJoblist,
      String? description,
      List<DebPackage> packages,
      @JsonKey(name: 'snap-packages')
          List<SnapPackage> snapPackages,
      Distribution? distribution,
      List<Result>? results,
      @JsonKey(name: 'resource-results')
          List<ResourceResult>? resourceResults,
      @JsonKey(name: 'attachment-results')
          List<AttachmentResult>? attachmentResults,
      @JsonKey(name: 'rejected-jobs')
          List<dynamic>? rejectedJobs,
      @JsonKey(name: 'category_map')
          Map<String, String> categoryMap,
      @JsonKey(name: 'dkms_info')
          DkmsInfo? dkmsInfo,
      List<Device>? devices,
      @JsonKey(name: 'modprobe-info')
          List<dynamic>? modprobeInfo,
      @JsonKey(name: 'pci_subsystem_id')
          dynamic pciSubsystemId,
      String? kernel,
      String? architecture,
      Memory? memory,
      Processor? processor,
      @JsonKey(name: 'kernel-cmdline')
          String? kernelCmdline});

  @override
  $DistributionCopyWith<$Res>? get distribution;
  @override
  $MemoryCopyWith<$Res>? get memory;
  @override
  $ProcessorCopyWith<$Res>? get processor;
}

/// @nodoc
class __$$_SubmissionCopyWithImpl<$Res> extends _$SubmissionCopyWithImpl<$Res>
    implements _$$_SubmissionCopyWith<$Res> {
  __$$_SubmissionCopyWithImpl(
      _$_Submission _value, $Res Function(_$_Submission) _then)
      : super(_value, (v) => _then(v as _$_Submission));

  @override
  _$_Submission get _value => super._value as _$_Submission;

  @override
  $Res call({
    Object? title = freezed,
    Object? testplanId = freezed,
    Object? customJoblist = freezed,
    Object? description = freezed,
    Object? packages = freezed,
    Object? snapPackages = freezed,
    Object? distribution = freezed,
    Object? results = freezed,
    Object? resourceResults = freezed,
    Object? attachmentResults = freezed,
    Object? rejectedJobs = freezed,
    Object? categoryMap = freezed,
    Object? dkmsInfo = freezed,
    Object? devices = freezed,
    Object? modprobeInfo = freezed,
    Object? pciSubsystemId = freezed,
    Object? kernel = freezed,
    Object? architecture = freezed,
    Object? memory = freezed,
    Object? processor = freezed,
    Object? kernelCmdline = freezed,
  }) {
    return _then(_$_Submission(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      testplanId: testplanId == freezed
          ? _value.testplanId
          : testplanId // ignore: cast_nullable_to_non_nullable
              as String,
      customJoblist: customJoblist == freezed
          ? _value.customJoblist
          : customJoblist // ignore: cast_nullable_to_non_nullable
              as bool,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      packages: packages == freezed
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<DebPackage>,
      snapPackages: snapPackages == freezed
          ? _value._snapPackages
          : snapPackages // ignore: cast_nullable_to_non_nullable
              as List<SnapPackage>,
      distribution: distribution == freezed
          ? _value.distribution
          : distribution // ignore: cast_nullable_to_non_nullable
              as Distribution?,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      resourceResults: resourceResults == freezed
          ? _value._resourceResults
          : resourceResults // ignore: cast_nullable_to_non_nullable
              as List<ResourceResult>?,
      attachmentResults: attachmentResults == freezed
          ? _value._attachmentResults
          : attachmentResults // ignore: cast_nullable_to_non_nullable
              as List<AttachmentResult>?,
      rejectedJobs: rejectedJobs == freezed
          ? _value._rejectedJobs
          : rejectedJobs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      categoryMap: categoryMap == freezed
          ? _value._categoryMap
          : categoryMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      dkmsInfo: dkmsInfo == freezed
          ? _value.dkmsInfo
          : dkmsInfo // ignore: cast_nullable_to_non_nullable
              as DkmsInfo?,
      devices: devices == freezed
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<Device>?,
      modprobeInfo: modprobeInfo == freezed
          ? _value._modprobeInfo
          : modprobeInfo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      pciSubsystemId: pciSubsystemId == freezed
          ? _value.pciSubsystemId
          : pciSubsystemId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kernel: kernel == freezed
          ? _value.kernel
          : kernel // ignore: cast_nullable_to_non_nullable
              as String?,
      architecture: architecture == freezed
          ? _value.architecture
          : architecture // ignore: cast_nullable_to_non_nullable
              as String?,
      memory: memory == freezed
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as Memory?,
      processor: processor == freezed
          ? _value.processor
          : processor // ignore: cast_nullable_to_non_nullable
              as Processor?,
      kernelCmdline: kernelCmdline == freezed
          ? _value.kernelCmdline
          : kernelCmdline // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Submission implements _Submission {
  _$_Submission(
      {this.title,
      @JsonKey(name: 'testplan_id')
          required this.testplanId,
      @JsonKey(name: 'custom_joblist')
          required this.customJoblist,
      this.description,
      required final List<DebPackage> packages,
      @JsonKey(name: 'snap-packages')
          required final List<SnapPackage> snapPackages,
      this.distribution,
      final List<Result>? results,
      @JsonKey(name: 'resource-results')
          final List<ResourceResult>? resourceResults,
      @JsonKey(name: 'attachment-results')
          final List<AttachmentResult>? attachmentResults,
      @JsonKey(name: 'rejected-jobs')
          final List<dynamic>? rejectedJobs,
      @JsonKey(name: 'category_map')
          required final Map<String, String> categoryMap,
      @JsonKey(name: 'dkms_info')
          this.dkmsInfo,
      final List<Device>? devices,
      @JsonKey(name: 'modprobe-info')
          final List<dynamic>? modprobeInfo,
      @JsonKey(name: 'pci_subsystem_id')
          this.pciSubsystemId,
      this.kernel,
      this.architecture,
      this.memory,
      this.processor,
      @JsonKey(name: 'kernel-cmdline')
          this.kernelCmdline})
      : _packages = packages,
        _snapPackages = snapPackages,
        _results = results,
        _resourceResults = resourceResults,
        _attachmentResults = attachmentResults,
        _rejectedJobs = rejectedJobs,
        _categoryMap = categoryMap,
        _devices = devices,
        _modprobeInfo = modprobeInfo;

  factory _$_Submission.fromJson(Map<String, dynamic> json) =>
      _$$_SubmissionFromJson(json);

  @override
  final String? title;
  @override
  @JsonKey(name: 'testplan_id')
  final String testplanId;
  @override
  @JsonKey(name: 'custom_joblist')
  final bool customJoblist;
  @override
  final String? description;
  final List<DebPackage> _packages;
  @override
  List<DebPackage> get packages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  final List<SnapPackage> _snapPackages;
  @override
  @JsonKey(name: 'snap-packages')
  List<SnapPackage> get snapPackages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snapPackages);
  }

  @override
  final Distribution? distribution;
  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ResourceResult>? _resourceResults;
  @override
  @JsonKey(name: 'resource-results')
  List<ResourceResult>? get resourceResults {
    final value = _resourceResults;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AttachmentResult>? _attachmentResults;
  @override
  @JsonKey(name: 'attachment-results')
  List<AttachmentResult>? get attachmentResults {
    final value = _attachmentResults;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _rejectedJobs;
  @override
  @JsonKey(name: 'rejected-jobs')
  List<dynamic>? get rejectedJobs {
    final value = _rejectedJobs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, String> _categoryMap;
  @override
  @JsonKey(name: 'category_map')
  Map<String, String> get categoryMap {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categoryMap);
  }

  @override
  @JsonKey(name: 'dkms_info')
  final DkmsInfo? dkmsInfo;
  final List<Device>? _devices;
  @override
  List<Device>? get devices {
    final value = _devices;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _modprobeInfo;
  @override
  @JsonKey(name: 'modprobe-info')
  List<dynamic>? get modprobeInfo {
    final value = _modprobeInfo;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'pci_subsystem_id')
  final dynamic pciSubsystemId;
  @override
  final String? kernel;
  @override
  final String? architecture;
  @override
  final Memory? memory;
  @override
  final Processor? processor;
  @override
  @JsonKey(name: 'kernel-cmdline')
  final String? kernelCmdline;

  @override
  String toString() {
    return 'Submission(title: $title, testplanId: $testplanId, customJoblist: $customJoblist, description: $description, packages: $packages, snapPackages: $snapPackages, distribution: $distribution, results: $results, resourceResults: $resourceResults, attachmentResults: $attachmentResults, rejectedJobs: $rejectedJobs, categoryMap: $categoryMap, dkmsInfo: $dkmsInfo, devices: $devices, modprobeInfo: $modprobeInfo, pciSubsystemId: $pciSubsystemId, kernel: $kernel, architecture: $architecture, memory: $memory, processor: $processor, kernelCmdline: $kernelCmdline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Submission &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.testplanId, testplanId) &&
            const DeepCollectionEquality()
                .equals(other.customJoblist, customJoblist) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other._packages, _packages) &&
            const DeepCollectionEquality()
                .equals(other._snapPackages, _snapPackages) &&
            const DeepCollectionEquality()
                .equals(other.distribution, distribution) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            const DeepCollectionEquality()
                .equals(other._resourceResults, _resourceResults) &&
            const DeepCollectionEquality()
                .equals(other._attachmentResults, _attachmentResults) &&
            const DeepCollectionEquality()
                .equals(other._rejectedJobs, _rejectedJobs) &&
            const DeepCollectionEquality()
                .equals(other._categoryMap, _categoryMap) &&
            const DeepCollectionEquality().equals(other.dkmsInfo, dkmsInfo) &&
            const DeepCollectionEquality().equals(other._devices, _devices) &&
            const DeepCollectionEquality()
                .equals(other._modprobeInfo, _modprobeInfo) &&
            const DeepCollectionEquality()
                .equals(other.pciSubsystemId, pciSubsystemId) &&
            const DeepCollectionEquality().equals(other.kernel, kernel) &&
            const DeepCollectionEquality()
                .equals(other.architecture, architecture) &&
            const DeepCollectionEquality().equals(other.memory, memory) &&
            const DeepCollectionEquality().equals(other.processor, processor) &&
            const DeepCollectionEquality()
                .equals(other.kernelCmdline, kernelCmdline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(testplanId),
        const DeepCollectionEquality().hash(customJoblist),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(_packages),
        const DeepCollectionEquality().hash(_snapPackages),
        const DeepCollectionEquality().hash(distribution),
        const DeepCollectionEquality().hash(_results),
        const DeepCollectionEquality().hash(_resourceResults),
        const DeepCollectionEquality().hash(_attachmentResults),
        const DeepCollectionEquality().hash(_rejectedJobs),
        const DeepCollectionEquality().hash(_categoryMap),
        const DeepCollectionEquality().hash(dkmsInfo),
        const DeepCollectionEquality().hash(_devices),
        const DeepCollectionEquality().hash(_modprobeInfo),
        const DeepCollectionEquality().hash(pciSubsystemId),
        const DeepCollectionEquality().hash(kernel),
        const DeepCollectionEquality().hash(architecture),
        const DeepCollectionEquality().hash(memory),
        const DeepCollectionEquality().hash(processor),
        const DeepCollectionEquality().hash(kernelCmdline)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_SubmissionCopyWith<_$_Submission> get copyWith =>
      __$$_SubmissionCopyWithImpl<_$_Submission>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubmissionToJson(
      this,
    );
  }
}

abstract class _Submission implements Submission {
  factory _Submission(
      {final String? title,
      @JsonKey(name: 'testplan_id')
          required final String testplanId,
      @JsonKey(name: 'custom_joblist')
          required final bool customJoblist,
      final String? description,
      required final List<DebPackage> packages,
      @JsonKey(name: 'snap-packages')
          required final List<SnapPackage> snapPackages,
      final Distribution? distribution,
      final List<Result>? results,
      @JsonKey(name: 'resource-results')
          final List<ResourceResult>? resourceResults,
      @JsonKey(name: 'attachment-results')
          final List<AttachmentResult>? attachmentResults,
      @JsonKey(name: 'rejected-jobs')
          final List<dynamic>? rejectedJobs,
      @JsonKey(name: 'category_map')
          required final Map<String, String> categoryMap,
      @JsonKey(name: 'dkms_info')
          final DkmsInfo? dkmsInfo,
      final List<Device>? devices,
      @JsonKey(name: 'modprobe-info')
          final List<dynamic>? modprobeInfo,
      @JsonKey(name: 'pci_subsystem_id')
          final dynamic pciSubsystemId,
      final String? kernel,
      final String? architecture,
      final Memory? memory,
      final Processor? processor,
      @JsonKey(name: 'kernel-cmdline')
          final String? kernelCmdline}) = _$_Submission;

  factory _Submission.fromJson(Map<String, dynamic> json) =
      _$_Submission.fromJson;

  @override
  String? get title;
  @override
  @JsonKey(name: 'testplan_id')
  String get testplanId;
  @override
  @JsonKey(name: 'custom_joblist')
  bool get customJoblist;
  @override
  String? get description;
  @override
  List<DebPackage> get packages;
  @override
  @JsonKey(name: 'snap-packages')
  List<SnapPackage> get snapPackages;
  @override
  Distribution? get distribution;
  @override
  List<Result>? get results;
  @override
  @JsonKey(name: 'resource-results')
  List<ResourceResult>? get resourceResults;
  @override
  @JsonKey(name: 'attachment-results')
  List<AttachmentResult>? get attachmentResults;
  @override
  @JsonKey(name: 'rejected-jobs')
  List<dynamic>? get rejectedJobs;
  @override
  @JsonKey(name: 'category_map')
  Map<String, String> get categoryMap;
  @override
  @JsonKey(name: 'dkms_info')
  DkmsInfo? get dkmsInfo;
  @override
  List<Device>? get devices;
  @override
  @JsonKey(name: 'modprobe-info')
  List<dynamic>? get modprobeInfo;
  @override
  @JsonKey(name: 'pci_subsystem_id')
  dynamic get pciSubsystemId;
  @override
  String? get kernel;
  @override
  String? get architecture;
  @override
  Memory? get memory;
  @override
  Processor? get processor;
  @override
  @JsonKey(name: 'kernel-cmdline')
  String? get kernelCmdline;
  @override
  @JsonKey(ignore: true)
  _$$_SubmissionCopyWith<_$_Submission> get copyWith =>
      throw _privateConstructorUsedError;
}
