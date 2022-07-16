import 'package:freezed_annotation/freezed_annotation.dart';

part 'device.freezed.dart';
part 'device.g.dart';

@freezed
class Device with _$Device {
  factory Device({
    String? bus,
    String? driver,
    String? name,
    String? path,
    String? product,
    @JsonKey(name: 'product_slug') String? productSlug,
    String? category,
    String? vendor,
    @JsonKey(name: 'vendor_slug') String? vendorSlug,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'vendor_id') int? vendorId,
    String? interface,
    String? mac,
  }) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}
