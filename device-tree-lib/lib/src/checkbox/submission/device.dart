import 'package:freezed_annotation/freezed_annotation.dart';

part 'device.freezed.dart';
part 'device.g.dart';

@freezed
class Device with _$Device {
  factory Device({
    required String bus,
    required String driver,
    required String name,
    required String path,
    required String product,
    @JsonKey(name: 'product_slug') required String productSlug,
    required String category,
    required String vendor,
    @JsonKey(name: 'vendor_slug') required String vendorSlug,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'vendor_id') required int vendorId,
    required String interface,
    required String mac,
  }) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}
