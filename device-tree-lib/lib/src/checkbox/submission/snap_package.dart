import 'package:freezed_annotation/freezed_annotation.dart';

part 'snap_package.freezed.dart';
part 'snap_package.g.dart';

@freezed
class SnapPackage with _$SnapPackage {
  factory SnapPackage({
    String? name,
    String? confinement,
    String? developer,
    String? devmode,
    @JsonKey(name: 'install-date') DateTime? installDate,
    String? revision,
    String? status,
    String? type,
    String? version,
    String? channel,
  }) = _SnapPackage;

  factory SnapPackage.fromJson(Map<String, dynamic> json) =>
      _$SnapPackageFromJson(json);
}
