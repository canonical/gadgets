import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
  factory Result({
    required String id,
    @JsonKey(name: 'full_id') required String fullId,
    required String name,
    @JsonKey(name: 'certification_status') String? certificationStatus,
    required String category,
    @JsonKey(name: 'category_id') String? categoryId,
    required String status,
    required String outcome,
    String? comments,
    @JsonKey(name: 'io_log') required String ioLog,
    required String type,
    required String project,
    required double duration,
    required String plugin,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
