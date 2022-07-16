import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'checkbox_submission.freezed.dart';
// part 'main.g.dart';

@freezed
class CheckboxSubmission with _$CheckboxSubmission {
  const factory CheckboxSubmission({required String title}) =
      _CheckboxSubmission;

  factory CheckboxSubmission.fromJson(Map<String, Object?> json) =>
      _$CheckboxSubmissionFromJson(json);
}
