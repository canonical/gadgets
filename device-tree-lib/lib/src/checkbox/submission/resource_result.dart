import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource_result.freezed.dart';
part 'resource_result.g.dart';

@freezed
class ResourceResult with _$ResourceResult {
  factory ResourceResult({
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
    String? type,
    String? project,
    double? duration,
  }) = _ResourceResult;

  factory ResourceResult.fromJson(Map<String, dynamic> json) =>
      _$ResourceResultFromJson(json);
}
