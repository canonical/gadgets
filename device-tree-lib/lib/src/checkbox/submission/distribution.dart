import 'package:freezed_annotation/freezed_annotation.dart';

part 'distribution.freezed.dart';
part 'distribution.g.dart';

@freezed
class Distribution with _$Distribution {
  factory Distribution({
    required String codename,
    required String description,
    @JsonKey(name: 'distributor_id') required String distributorId,
    required String release,
  }) = _Distribution;

  factory Distribution.fromJson(Map<String, dynamic> json) =>
      _$DistributionFromJson(json);
}
