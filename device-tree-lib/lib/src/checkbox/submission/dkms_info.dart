import 'package:freezed_annotation/freezed_annotation.dart';

part 'dkms_info.freezed.dart';
part 'dkms_info.g.dart';

@freezed
class DkmsInfo with _$DkmsInfo {
  const factory DkmsInfo() = _DkmsInfo;
  factory DkmsInfo.fromJson(Map<String, Object?> json) =>
      _$DkmsInfoFromJson(json);
}
