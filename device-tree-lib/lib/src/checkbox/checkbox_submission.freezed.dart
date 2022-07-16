// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'checkbox_submission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckboxSubmission _$CheckboxSubmissionFromJson(Map<String, dynamic> json) {
  return _CheckboxSubmission.fromJson(json);
}

/// @nodoc
mixin _$CheckboxSubmission {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "testplan_id")
  String get testplanId => throw _privateConstructorUsedError;
  @JsonKey(name: "custom_joblist")
  bool get customJoblist => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  Iterable<String> get packages => throw _privateConstructorUsedError;
  @JsonKey(name: "snap-packages")
  Iterable<SnapPackage> get snapPackages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckboxSubmissionCopyWith<CheckboxSubmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckboxSubmissionCopyWith<$Res> {
  factory $CheckboxSubmissionCopyWith(
          CheckboxSubmission value, $Res Function(CheckboxSubmission) then) =
      _$CheckboxSubmissionCopyWithImpl<$Res>;
  $Res call(
      {String title,
      @JsonKey(name: "testplan_id") String testplanId,
      @JsonKey(name: "custom_joblist") bool customJoblist,
      String description,
      Iterable<String> packages,
      @JsonKey(name: "snap-packages") Iterable<SnapPackage> snapPackages});
}

/// @nodoc
class _$CheckboxSubmissionCopyWithImpl<$Res>
    implements $CheckboxSubmissionCopyWith<$Res> {
  _$CheckboxSubmissionCopyWithImpl(this._value, this._then);

  final CheckboxSubmission _value;
  // ignore: unused_field
  final $Res Function(CheckboxSubmission) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? testplanId = freezed,
    Object? customJoblist = freezed,
    Object? description = freezed,
    Object? packages = freezed,
    Object? snapPackages = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as Iterable<String>,
      snapPackages: snapPackages == freezed
          ? _value.snapPackages
          : snapPackages // ignore: cast_nullable_to_non_nullable
              as Iterable<SnapPackage>,
    ));
  }
}

/// @nodoc
abstract class _$$_CheckboxSubmissionCopyWith<$Res>
    implements $CheckboxSubmissionCopyWith<$Res> {
  factory _$$_CheckboxSubmissionCopyWith(_$_CheckboxSubmission value,
          $Res Function(_$_CheckboxSubmission) then) =
      __$$_CheckboxSubmissionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      @JsonKey(name: "testplan_id") String testplanId,
      @JsonKey(name: "custom_joblist") bool customJoblist,
      String description,
      Iterable<String> packages,
      @JsonKey(name: "snap-packages") Iterable<SnapPackage> snapPackages});
}

/// @nodoc
class __$$_CheckboxSubmissionCopyWithImpl<$Res>
    extends _$CheckboxSubmissionCopyWithImpl<$Res>
    implements _$$_CheckboxSubmissionCopyWith<$Res> {
  __$$_CheckboxSubmissionCopyWithImpl(
      _$_CheckboxSubmission _value, $Res Function(_$_CheckboxSubmission) _then)
      : super(_value, (v) => _then(v as _$_CheckboxSubmission));

  @override
  _$_CheckboxSubmission get _value => super._value as _$_CheckboxSubmission;

  @override
  $Res call({
    Object? title = freezed,
    Object? testplanId = freezed,
    Object? customJoblist = freezed,
    Object? description = freezed,
    Object? packages = freezed,
    Object? snapPackages = freezed,
  }) {
    return _then(_$_CheckboxSubmission(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as Iterable<String>,
      snapPackages: snapPackages == freezed
          ? _value.snapPackages
          : snapPackages // ignore: cast_nullable_to_non_nullable
              as Iterable<SnapPackage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckboxSubmission implements _CheckboxSubmission {
  const _$_CheckboxSubmission(
      {required this.title,
      @JsonKey(name: "testplan_id") required this.testplanId,
      @JsonKey(name: "custom_joblist") required this.customJoblist,
      required this.description,
      required this.packages,
      @JsonKey(name: "snap-packages") required this.snapPackages});

  factory _$_CheckboxSubmission.fromJson(Map<String, dynamic> json) =>
      _$$_CheckboxSubmissionFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: "testplan_id")
  final String testplanId;
  @override
  @JsonKey(name: "custom_joblist")
  final bool customJoblist;
  @override
  final String description;
  @override
  final Iterable<String> packages;
  @override
  @JsonKey(name: "snap-packages")
  final Iterable<SnapPackage> snapPackages;

  @override
  String toString() {
    return 'CheckboxSubmission(title: $title, testplanId: $testplanId, customJoblist: $customJoblist, description: $description, packages: $packages, snapPackages: $snapPackages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckboxSubmission &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.testplanId, testplanId) &&
            const DeepCollectionEquality()
                .equals(other.customJoblist, customJoblist) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.packages, packages) &&
            const DeepCollectionEquality()
                .equals(other.snapPackages, snapPackages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(testplanId),
      const DeepCollectionEquality().hash(customJoblist),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(packages),
      const DeepCollectionEquality().hash(snapPackages));

  @JsonKey(ignore: true)
  @override
  _$$_CheckboxSubmissionCopyWith<_$_CheckboxSubmission> get copyWith =>
      __$$_CheckboxSubmissionCopyWithImpl<_$_CheckboxSubmission>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckboxSubmissionToJson(
      this,
    );
  }
}

abstract class _CheckboxSubmission implements CheckboxSubmission {
  const factory _CheckboxSubmission(
          {required final String title,
          @JsonKey(name: "testplan_id")
              required final String testplanId,
          @JsonKey(name: "custom_joblist")
              required final bool customJoblist,
          required final String description,
          required final Iterable<String> packages,
          @JsonKey(name: "snap-packages")
              required final Iterable<SnapPackage> snapPackages}) =
      _$_CheckboxSubmission;

  factory _CheckboxSubmission.fromJson(Map<String, dynamic> json) =
      _$_CheckboxSubmission.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: "testplan_id")
  String get testplanId;
  @override
  @JsonKey(name: "custom_joblist")
  bool get customJoblist;
  @override
  String get description;
  @override
  Iterable<String> get packages;
  @override
  @JsonKey(name: "snap-packages")
  Iterable<SnapPackage> get snapPackages;
  @override
  @JsonKey(ignore: true)
  _$$_CheckboxSubmissionCopyWith<_$_CheckboxSubmission> get copyWith =>
      throw _privateConstructorUsedError;
}
