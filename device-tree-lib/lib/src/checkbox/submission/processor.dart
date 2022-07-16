import 'package:freezed_annotation/freezed_annotation.dart';

part 'processor.freezed.dart';
part 'processor.g.dart';

@freezed
class Processor with _$Processor {
  factory Processor({
    String? bogomips,
    String? cache,
    String? count,
    String? governors,
    String? model,
    @JsonKey(name: 'model_number') String? modelNumber,
    @JsonKey(name: 'model_revision') String? modelRevision,
    @JsonKey(name: 'model_version') String? modelVersion,
    String? other,
    String? platform,
    String? scaling,
    String? speed,
    String? type,
  }) = _Processor;

  factory Processor.fromJson(Map<String, dynamic> json) =>
      _$ProcessorFromJson(json);
}
