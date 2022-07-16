import 'package:freezed_annotation/freezed_annotation.dart';

part 'snap_package.freezed.dart';
part 'snap_package.g.dart';

@freezed
class SnapPackage with _$SnapPackage {
  factory SnapPackage({
    required String name,
    required String confinement,
    required String developer,
    required String devmode,
    @JsonKey(name: 'install-date') required DateTime installDate,
    required String revision,
    required String status,
    required String type,
    required String version,
    required String channel,
  }) = _SnapPackage;

  factory SnapPackage.fromJson(Map<String, dynamic> json) =>
      _$SnapPackageFromJson(json);
}
