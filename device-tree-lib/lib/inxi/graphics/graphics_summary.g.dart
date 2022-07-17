// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphics_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GraphicsSummary _$$_GraphicsSummaryFromJson(Map<String, dynamic> json) =>
    _$_GraphicsSummary(
      pciGraphicsDevices: (json['pciGraphicsDevices'] as List<dynamic>)
          .map((e) => PCIGraphicsDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
      usbGraphicsDevices: (json['usbGraphicsDevices'] as List<dynamic>)
          .map((e) => USBGraphicsDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
      displayServer: json['displayServer'] == null
          ? null
          : DisplayServer.fromJson(
              json['displayServer'] as Map<String, dynamic>),
      screens: (json['screens'] as List<dynamic>)
          .map((e) => Screen.fromJson(e as Map<String, dynamic>))
          .toList(),
      displays: (json['displays'] as List<dynamic>)
          .map((e) => Display.fromJson(e as Map<String, dynamic>))
          .toList(),
      renderer: json['renderer'] == null
          ? null
          : DisplayRenderer.fromJson(json['renderer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GraphicsSummaryToJson(_$_GraphicsSummary instance) =>
    <String, dynamic>{
      'pciGraphicsDevices':
          instance.pciGraphicsDevices.map((e) => e.toJson()).toList(),
      'usbGraphicsDevices':
          instance.usbGraphicsDevices.map((e) => e.toJson()).toList(),
      'displayServer': instance.displayServer?.toJson(),
      'screens': instance.screens.map((e) => e.toJson()).toList(),
      'displays': instance.displays.map((e) => e.toJson()).toList(),
      'renderer': instance.renderer?.toJson(),
    };
