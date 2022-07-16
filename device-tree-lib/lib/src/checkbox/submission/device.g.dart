// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Device _$$_DeviceFromJson(Map<String, dynamic> json) => _$_Device(
      bus: json['bus'] as String,
      driver: json['driver'] as String,
      name: json['name'] as String,
      path: json['path'] as String,
      product: json['product'] as String,
      productSlug: json['product_slug'] as String,
      category: json['category'] as String,
      vendor: json['vendor'] as String,
      vendorSlug: json['vendor_slug'] as String,
      productId: json['product_id'] as int,
      vendorId: json['vendor_id'] as int,
      interface: json['interface'] as String,
      mac: json['mac'] as String,
    );

Map<String, dynamic> _$$_DeviceToJson(_$_Device instance) => <String, dynamic>{
      'bus': instance.bus,
      'driver': instance.driver,
      'name': instance.name,
      'path': instance.path,
      'product': instance.product,
      'product_slug': instance.productSlug,
      'category': instance.category,
      'vendor': instance.vendor,
      'vendor_slug': instance.vendorSlug,
      'product_id': instance.productId,
      'vendor_id': instance.vendorId,
      'interface': instance.interface,
      'mac': instance.mac,
    };
