import 'package:freezed_annotation/freezed_annotation.dart';

part 'deb_package.freezed.dart';
part 'deb_package.g.dart';

@freezed
class DebPackage with _$DebPackage {
  const factory DebPackage() = _DebPackage;
  factory DebPackage.fromJson(Map<String, Object?> json) =>
      _$DebPackageFromJson(json);
}
