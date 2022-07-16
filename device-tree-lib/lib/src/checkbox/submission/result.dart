import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
  factory Result({
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
    String? plugin,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
