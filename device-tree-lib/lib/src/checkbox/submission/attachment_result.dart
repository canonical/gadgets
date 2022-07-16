import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment_result.freezed.dart';
part 'attachment_result.g.dart';

@freezed
class AttachmentResult with _$AttachmentResult {
  factory AttachmentResult({
    required String id,
    @JsonKey(name: 'full_id') required String fullId,
    required String name,
    @JsonKey(name: 'certification_status') required String certificationStatus,
    required String category,
    @JsonKey(name: 'category_id') String? categoryId,
    required String status,
    required String outcome,
    String? comments,
    @JsonKey(name: 'io_log') required String ioLog,
    required double duration,
  }) = _AttachmentResult;

  factory AttachmentResult.fromJson(Map<String, dynamic> json) =>
      _$AttachmentResultFromJson(json);
}
