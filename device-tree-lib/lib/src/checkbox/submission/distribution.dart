import 'package:freezed_annotation/freezed_annotation.dart';

part 'distribution.freezed.dart';
part 'distribution.g.dart';

@freezed
class Distribution with _$Distribution {
  factory Distribution({
    String? codename,
    String? description,
    @JsonKey(name: 'distributor_id') String? distributorId,
    String? release,
  }) = _Distribution;

  factory Distribution.fromJson(Map<String, dynamic> json) =>
      _$DistributionFromJson(json);
}
