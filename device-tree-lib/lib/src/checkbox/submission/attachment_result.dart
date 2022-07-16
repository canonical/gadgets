import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment_result.freezed.dart';
part 'attachment_result.g.dart';

@freezed
class AttachmentResult with _$AttachmentResult {
  factory AttachmentResult({
    String? id,
    @JsonKey(name: 'full_id') String? fullId,
    String? name,
    @JsonKey(name: 'certification_status') String? certificationStatus,
    String? category,
    @JsonKey(name: 'category_id') String? categoryId,
    String? status,
    String? outcome,
    String? comments,
    @JsonKey(name: 'io_log') String? ioLog,
    double? duration,
  }) = _AttachmentResult;

  factory AttachmentResult.fromJson(Map<String, dynamic> json) =>
      _$AttachmentResultFromJson(json);
}
