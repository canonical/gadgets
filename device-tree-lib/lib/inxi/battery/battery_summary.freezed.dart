// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'battery_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BatterySummary _$BatterySummaryFromJson(Map<String, dynamic> json) {
  return _BatterySummary.fromJson(json);
}

/// @nodoc
mixin _$BatterySummary {
  List<MachineBattery> get machineBatteries =>
      throw _privateConstructorUsedError;
  List<PeripheralBattery> get peripheralBatteries =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatterySummaryCopyWith<BatterySummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatterySummaryCopyWith<$Res> {
  factory $BatterySummaryCopyWith(
          BatterySummary value, $Res Function(BatterySummary) then) =
      _$BatterySummaryCopyWithImpl<$Res>;
  $Res call(
      {List<MachineBattery> machineBatteries,
      List<PeripheralBattery> peripheralBatteries});
}

/// @nodoc
class _$BatterySummaryCopyWithImpl<$Res>
    implements $BatterySummaryCopyWith<$Res> {
  _$BatterySummaryCopyWithImpl(this._value, this._then);

  final BatterySummary _value;
  // ignore: unused_field
  final $Res Function(BatterySummary) _then;

  @override
  $Res call({
    Object? machineBatteries = freezed,
    Object? peripheralBatteries = freezed,
  }) {
    return _then(_value.copyWith(
      machineBatteries: machineBatteries == freezed
          ? _value.machineBatteries
          : machineBatteries // ignore: cast_nullable_to_non_nullable
              as List<MachineBattery>,
      peripheralBatteries: peripheralBatteries == freezed
          ? _value.peripheralBatteries
          : peripheralBatteries // ignore: cast_nullable_to_non_nullable
              as List<PeripheralBattery>,
    ));
  }
}

/// @nodoc
abstract class _$$_BatterySummaryCopyWith<$Res>
    implements $BatterySummaryCopyWith<$Res> {
  factory _$$_BatterySummaryCopyWith(
          _$_BatterySummary value, $Res Function(_$_BatterySummary) then) =
      __$$_BatterySummaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<MachineBattery> machineBatteries,
      List<PeripheralBattery> peripheralBatteries});
}

/// @nodoc
class __$$_BatterySummaryCopyWithImpl<$Res>
    extends _$BatterySummaryCopyWithImpl<$Res>
    implements _$$_BatterySummaryCopyWith<$Res> {
  __$$_BatterySummaryCopyWithImpl(
      _$_BatterySummary _value, $Res Function(_$_BatterySummary) _then)
      : super(_value, (v) => _then(v as _$_BatterySummary));

  @override
  _$_BatterySummary get _value => super._value as _$_BatterySummary;

  @override
  $Res call({
    Object? machineBatteries = freezed,
    Object? peripheralBatteries = freezed,
  }) {
    return _then(_$_BatterySummary(
      machineBatteries: machineBatteries == freezed
          ? _value._machineBatteries
          : machineBatteries // ignore: cast_nullable_to_non_nullable
              as List<MachineBattery>,
      peripheralBatteries: peripheralBatteries == freezed
          ? _value._peripheralBatteries
          : peripheralBatteries // ignore: cast_nullable_to_non_nullable
              as List<PeripheralBattery>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BatterySummary extends _BatterySummary {
  _$_BatterySummary(
      {required final List<MachineBattery> machineBatteries,
      required final List<PeripheralBattery> peripheralBatteries})
      : _machineBatteries = machineBatteries,
        _peripheralBatteries = peripheralBatteries,
        super._();

  factory _$_BatterySummary.fromJson(Map<String, dynamic> json) =>
      _$$_BatterySummaryFromJson(json);

  final List<MachineBattery> _machineBatteries;
  @override
  List<MachineBattery> get machineBatteries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_machineBatteries);
  }

  final List<PeripheralBattery> _peripheralBatteries;
  @override
  List<PeripheralBattery> get peripheralBatteries {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peripheralBatteries);
  }

  @override
  String toString() {
    return 'BatterySummary(machineBatteries: $machineBatteries, peripheralBatteries: $peripheralBatteries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BatterySummary &&
            const DeepCollectionEquality()
                .equals(other._machineBatteries, _machineBatteries) &&
            const DeepCollectionEquality()
                .equals(other._peripheralBatteries, _peripheralBatteries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_machineBatteries),
      const DeepCollectionEquality().hash(_peripheralBatteries));

  @JsonKey(ignore: true)
  @override
  _$$_BatterySummaryCopyWith<_$_BatterySummary> get copyWith =>
      __$$_BatterySummaryCopyWithImpl<_$_BatterySummary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BatterySummaryToJson(
      this,
    );
  }
}

abstract class _BatterySummary extends BatterySummary {
  factory _BatterySummary(
          {required final List<MachineBattery> machineBatteries,
          required final List<PeripheralBattery> peripheralBatteries}) =
      _$_BatterySummary;
  _BatterySummary._() : super._();

  factory _BatterySummary.fromJson(Map<String, dynamic> json) =
      _$_BatterySummary.fromJson;

  @override
  List<MachineBattery> get machineBatteries;
  @override
  List<PeripheralBattery> get peripheralBatteries;
  @override
  @JsonKey(ignore: true)
  _$$_BatterySummaryCopyWith<_$_BatterySummary> get copyWith =>
      throw _privateConstructorUsedError;
}
