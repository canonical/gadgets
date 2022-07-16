import 'package:freezed_annotation/freezed_annotation.dart';
import 'snap_package.dart';
import 'deb_package.dart';

part 'checkbox_submission.freezed.dart';
// part 'main.g.dart';

@freezed
class CheckboxSubmission with _$CheckboxSubmission {
  const factory CheckboxSubmission(
      {required String title,
      @JsonKey(name: "testplan_id")
          required String testplanId,
      @JsonKey(name: "custom_joblist")
          required bool customJoblist,
      required String description,
      required Iterable<DebPackage> packages,
      @JsonKey(name: "snap-packages")
          required Iterable<SnapPackage> snapPackages}) = _CheckboxSubmission;

  factory CheckboxSubmission.fromJson(Map<String, Object?> json) =>
      _$CheckboxSubmissionFromJson(json);
}
