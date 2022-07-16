import 'package:freezed_annotation/freezed_annotation.dart';

part 'processor.freezed.dart';
part 'processor.g.dart';

@freezed
class Processor with _$Processor {
  factory Processor({
    required String bogomips,
    required String cache,
    required String count,
    required String governors,
    required String model,
    @JsonKey(name: 'model_number') required String modelNumber,
    @JsonKey(name: 'model_revision') required String modelRevision,
    @JsonKey(name: 'model_version') required String modelVersion,
    required String other,
    required String platform,
    required String scaling,
    required String speed,
    required String type,
  }) = _Processor;

  factory Processor.fromJson(Map<String, dynamic> json) =>
      _$ProcessorFromJson(json);
}
