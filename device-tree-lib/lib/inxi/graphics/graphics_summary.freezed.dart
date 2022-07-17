// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'graphics_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GraphicsSummary _$GraphicsSummaryFromJson(Map<String, dynamic> json) {
  return _GraphicsSummary.fromJson(json);
}

/// @nodoc
mixin _$GraphicsSummary {
  List<PCIGraphicsDevice> get pciGraphicsDevices =>
      throw _privateConstructorUsedError;
  List<USBGraphicsDevice> get usbGraphicsDevices =>
      throw _privateConstructorUsedError;
  DisplayServer? get displayServer => throw _privateConstructorUsedError;
  List<Screen> get screens => throw _privateConstructorUsedError;
  List<Display> get displays => throw _privateConstructorUsedError;
  DisplayRenderer? get renderer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GraphicsSummaryCopyWith<GraphicsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GraphicsSummaryCopyWith<$Res> {
  factory $GraphicsSummaryCopyWith(
          GraphicsSummary value, $Res Function(GraphicsSummary) then) =
      _$GraphicsSummaryCopyWithImpl<$Res>;
  $Res call(
      {List<PCIGraphicsDevice> pciGraphicsDevices,
      List<USBGraphicsDevice> usbGraphicsDevices,
      DisplayServer? displayServer,
      List<Screen> screens,
      List<Display> displays,
      DisplayRenderer? renderer});

  $DisplayServerCopyWith<$Res>? get displayServer;
  $DisplayRendererCopyWith<$Res>? get renderer;
}

/// @nodoc
class _$GraphicsSummaryCopyWithImpl<$Res>
    implements $GraphicsSummaryCopyWith<$Res> {
  _$GraphicsSummaryCopyWithImpl(this._value, this._then);

  final GraphicsSummary _value;
  // ignore: unused_field
  final $Res Function(GraphicsSummary) _then;

  @override
  $Res call({
    Object? pciGraphicsDevices = freezed,
    Object? usbGraphicsDevices = freezed,
    Object? displayServer = freezed,
    Object? screens = freezed,
    Object? displays = freezed,
    Object? renderer = freezed,
  }) {
    return _then(_value.copyWith(
      pciGraphicsDevices: pciGraphicsDevices == freezed
          ? _value.pciGraphicsDevices
          : pciGraphicsDevices // ignore: cast_nullable_to_non_nullable
              as List<PCIGraphicsDevice>,
      usbGraphicsDevices: usbGraphicsDevices == freezed
          ? _value.usbGraphicsDevices
          : usbGraphicsDevices // ignore: cast_nullable_to_non_nullable
              as List<USBGraphicsDevice>,
      displayServer: displayServer == freezed
          ? _value.displayServer
          : displayServer // ignore: cast_nullable_to_non_nullable
              as DisplayServer?,
      screens: screens == freezed
          ? _value.screens
          : screens // ignore: cast_nullable_to_non_nullable
              as List<Screen>,
      displays: displays == freezed
          ? _value.displays
          : displays // ignore: cast_nullable_to_non_nullable
              as List<Display>,
      renderer: renderer == freezed
          ? _value.renderer
          : renderer // ignore: cast_nullable_to_non_nullable
              as DisplayRenderer?,
    ));
  }

  @override
  $DisplayServerCopyWith<$Res>? get displayServer {
    if (_value.displayServer == null) {
      return null;
    }

    return $DisplayServerCopyWith<$Res>(_value.displayServer!, (value) {
      return _then(_value.copyWith(displayServer: value));
    });
  }

  @override
  $DisplayRendererCopyWith<$Res>? get renderer {
    if (_value.renderer == null) {
      return null;
    }

    return $DisplayRendererCopyWith<$Res>(_value.renderer!, (value) {
      return _then(_value.copyWith(renderer: value));
    });
  }
}

/// @nodoc
abstract class _$$_GraphicsSummaryCopyWith<$Res>
    implements $GraphicsSummaryCopyWith<$Res> {
  factory _$$_GraphicsSummaryCopyWith(
          _$_GraphicsSummary value, $Res Function(_$_GraphicsSummary) then) =
      __$$_GraphicsSummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PCIGraphicsDevice> pciGraphicsDevices,
      List<USBGraphicsDevice> usbGraphicsDevices,
      DisplayServer? displayServer,
      List<Screen> screens,
      List<Display> displays,
      DisplayRenderer? renderer});

  @override
  $DisplayServerCopyWith<$Res>? get displayServer;
  @override
  $DisplayRendererCopyWith<$Res>? get renderer;
}

/// @nodoc
class __$$_GraphicsSummaryCopyWithImpl<$Res>
    extends _$GraphicsSummaryCopyWithImpl<$Res>
    implements _$$_GraphicsSummaryCopyWith<$Res> {
  __$$_GraphicsSummaryCopyWithImpl(
      _$_GraphicsSummary _value, $Res Function(_$_GraphicsSummary) _then)
      : super(_value, (v) => _then(v as _$_GraphicsSummary));

  @override
  _$_GraphicsSummary get _value => super._value as _$_GraphicsSummary;

  @override
  $Res call({
    Object? pciGraphicsDevices = freezed,
    Object? usbGraphicsDevices = freezed,
    Object? displayServer = freezed,
    Object? screens = freezed,
    Object? displays = freezed,
    Object? renderer = freezed,
  }) {
    return _then(_$_GraphicsSummary(
      pciGraphicsDevices: pciGraphicsDevices == freezed
          ? _value._pciGraphicsDevices
          : pciGraphicsDevices // ignore: cast_nullable_to_non_nullable
              as List<PCIGraphicsDevice>,
      usbGraphicsDevices: usbGraphicsDevices == freezed
          ? _value._usbGraphicsDevices
          : usbGraphicsDevices // ignore: cast_nullable_to_non_nullable
              as List<USBGraphicsDevice>,
      displayServer: displayServer == freezed
          ? _value.displayServer
          : displayServer // ignore: cast_nullable_to_non_nullable
              as DisplayServer?,
      screens: screens == freezed
          ? _value._screens
          : screens // ignore: cast_nullable_to_non_nullable
              as List<Screen>,
      displays: displays == freezed
          ? _value._displays
          : displays // ignore: cast_nullable_to_non_nullable
              as List<Display>,
      renderer: renderer == freezed
          ? _value.renderer
          : renderer // ignore: cast_nullable_to_non_nullable
              as DisplayRenderer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GraphicsSummary extends _GraphicsSummary {
  _$_GraphicsSummary(
      {required final List<PCIGraphicsDevice> pciGraphicsDevices,
      required final List<USBGraphicsDevice> usbGraphicsDevices,
      this.displayServer,
      required final List<Screen> screens,
      required final List<Display> displays,
      this.renderer})
      : _pciGraphicsDevices = pciGraphicsDevices,
        _usbGraphicsDevices = usbGraphicsDevices,
        _screens = screens,
        _displays = displays,
        super._();

  factory _$_GraphicsSummary.fromJson(Map<String, dynamic> json) =>
      _$$_GraphicsSummaryFromJson(json);

  final List<PCIGraphicsDevice> _pciGraphicsDevices;
  @override
  List<PCIGraphicsDevice> get pciGraphicsDevices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pciGraphicsDevices);
  }

  final List<USBGraphicsDevice> _usbGraphicsDevices;
  @override
  List<USBGraphicsDevice> get usbGraphicsDevices {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usbGraphicsDevices);
  }

  @override
  final DisplayServer? displayServer;
  final List<Screen> _screens;
  @override
  List<Screen> get screens {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_screens);
  }

  final List<Display> _displays;
  @override
  List<Display> get displays {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_displays);
  }

  @override
  final DisplayRenderer? renderer;

  @override
  String toString() {
    return 'GraphicsSummary(pciGraphicsDevices: $pciGraphicsDevices, usbGraphicsDevices: $usbGraphicsDevices, displayServer: $displayServer, screens: $screens, displays: $displays, renderer: $renderer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GraphicsSummary &&
            const DeepCollectionEquality()
                .equals(other._pciGraphicsDevices, _pciGraphicsDevices) &&
            const DeepCollectionEquality()
                .equals(other._usbGraphicsDevices, _usbGraphicsDevices) &&
            const DeepCollectionEquality()
                .equals(other.displayServer, displayServer) &&
            const DeepCollectionEquality().equals(other._screens, _screens) &&
            const DeepCollectionEquality().equals(other._displays, _displays) &&
            const DeepCollectionEquality().equals(other.renderer, renderer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pciGraphicsDevices),
      const DeepCollectionEquality().hash(_usbGraphicsDevices),
      const DeepCollectionEquality().hash(displayServer),
      const DeepCollectionEquality().hash(_screens),
      const DeepCollectionEquality().hash(_displays),
      const DeepCollectionEquality().hash(renderer));

  @JsonKey(ignore: true)
  @override
  _$$_GraphicsSummaryCopyWith<_$_GraphicsSummary> get copyWith =>
      __$$_GraphicsSummaryCopyWithImpl<_$_GraphicsSummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GraphicsSummaryToJson(
      this,
    );
  }
}

abstract class _GraphicsSummary extends GraphicsSummary {
  factory _GraphicsSummary(
      {required final List<PCIGraphicsDevice> pciGraphicsDevices,
      required final List<USBGraphicsDevice> usbGraphicsDevices,
      final DisplayServer? displayServer,
      required final List<Screen> screens,
      required final List<Display> displays,
      final DisplayRenderer? renderer}) = _$_GraphicsSummary;
  _GraphicsSummary._() : super._();

  factory _GraphicsSummary.fromJson(Map<String, dynamic> json) =
      _$_GraphicsSummary.fromJson;

  @override
  List<PCIGraphicsDevice> get pciGraphicsDevices;
  @override
  List<USBGraphicsDevice> get usbGraphicsDevices;
  @override
  DisplayServer? get displayServer;
  @override
  List<Screen> get screens;
  @override
  List<Display> get displays;
  @override
  DisplayRenderer? get renderer;
  @override
  @JsonKey(ignore: true)
  _$$_GraphicsSummaryCopyWith<_$_GraphicsSummary> get copyWith =>
      throw _privateConstructorUsedError;
}
