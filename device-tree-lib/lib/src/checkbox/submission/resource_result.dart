import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_result.freezed.dart';
part 'resource_result.g.dart';

@freezed
class ResourceResult with _$ResourceResult {
  factory ResourceResult({
    required String id,
    @JsonKey(name: 'full_id') required String fullId,
    required String name,
    @JsonKey(name: 'certification_status') required String certificationStatus,
    required String category,
    @JsonKey(name: 'category_id') required String categoryId,
    required String status,
    required String outcome,
    required String comments,
    @JsonKey(name: 'io_log') required String ioLog,
    required String type,
    required String project,
    required double duration,
  }) = _ResourceResult;

  factory ResourceResult.fromJson(Map<String, dynamic> json) =>
      _$ResourceResultFromJson(json);
}
