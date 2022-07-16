import 'package:freezed_annotation/freezed_annotation.dart';

part 'snap_package.freezed.dart';

@freezed
class SnapPackage with _$SnapPackage {
  const factory SnapPackage(
      {required String name,
      required String confinement,
      required String developer,
      required String devmode,
      required String installDate,
      required String revision,
      required String status,
      required String type,
      required String version}) = _SnapPackage;

  factory SnapPackage.fromJson(Map<String, Object?> json) =>
      _$SnapPackageFromJson(json);
}
