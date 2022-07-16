// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_id')
  String get fullId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'certification_status')
  String? get certificationStatus => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get outcome => throw _privateConstructorUsedError;
  String? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'io_log')
  String get ioLog => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get project => throw _privateConstructorUsedError;
  double get duration => throw _privateConstructorUsedError;
  String get plugin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'full_id') String fullId,
      String name,
      @JsonKey(name: 'certification_status') String? certificationStatus,
      String category,
      @JsonKey(name: 'category_id') String? categoryId,
      String status,
      String outcome,
      String? comments,
      @JsonKey(name: 'io_log') String ioLog,
      String type,
      String project,
      double duration,
      String plugin});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res> implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  final Result _value;
  // ignore: unused_field
  final $Res Function(Result) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullId = freezed,
    Object? name = freezed,
    Object? certificationStatus = freezed,
    Object? category = freezed,
    Object? categoryId = freezed,
    Object? status = freezed,
    Object? outcome = freezed,
    Object? comments = freezed,
    Object? ioLog = freezed,
    Object? type = freezed,
    Object? project = freezed,
    Object? duration = freezed,
    Object? plugin = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullId: fullId == freezed
          ? _value.fullId
          : fullId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      certificationStatus: certificationStatus == freezed
          ? _value.certificationStatus
          : certificationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      outcome: outcome == freezed
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as String,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
      ioLog: ioLog == freezed
          ? _value.ioLog
          : ioLog // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      plugin: plugin == freezed
          ? _value.plugin
          : plugin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'full_id') String fullId,
      String name,
      @JsonKey(name: 'certification_status') String? certificationStatus,
      String category,
      @JsonKey(name: 'category_id') String? categoryId,
      String status,
      String outcome,
      String? comments,
      @JsonKey(name: 'io_log') String ioLog,
      String type,
      String project,
      double duration,
      String plugin});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res> extends _$ResultCopyWithImpl<$Res>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, (v) => _then(v as _$_Result));

  @override
  _$_Result get _value => super._value as _$_Result;

  @override
  $Res call({
    Object? id = freezed,
    Object? fullId = freezed,
    Object? name = freezed,
    Object? certificationStatus = freezed,
    Object? category = freezed,
    Object? categoryId = freezed,
    Object? status = freezed,
    Object? outcome = freezed,
    Object? comments = freezed,
    Object? ioLog = freezed,
    Object? type = freezed,
    Object? project = freezed,
    Object? duration = freezed,
    Object? plugin = freezed,
  }) {
    return _then(_$_Result(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullId: fullId == freezed
          ? _value.fullId
          : fullId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      certificationStatus: certificationStatus == freezed
          ? _value.certificationStatus
          : certificationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      outcome: outcome == freezed
          ? _value.outcome
          : outcome // ignore: cast_nullable_to_non_nullable
              as String,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as String?,
      ioLog: ioLog == freezed
          ? _value.ioLog
          : ioLog // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      project: project == freezed
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
      plugin: plugin == freezed
          ? _value.plugin
          : plugin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  _$_Result(
      {required this.id,
      @JsonKey(name: 'full_id') required this.fullId,
      required this.name,
      @JsonKey(name: 'certification_status') this.certificationStatus,
      required this.category,
      @JsonKey(name: 'category_id') this.categoryId,
      required this.status,
      required this.outcome,
      this.comments,
      @JsonKey(name: 'io_log') required this.ioLog,
      required this.type,
      required this.project,
      required this.duration,
      required this.plugin});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'full_id')
  final String fullId;
  @override
  final String name;
  @override
  @JsonKey(name: 'certification_status')
  final String? certificationStatus;
  @override
  final String category;
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @override
  final String status;
  @override
  final String outcome;
  @override
  final String? comments;
  @override
  @JsonKey(name: 'io_log')
  final String ioLog;
  @override
  final String type;
  @override
  final String project;
  @override
  final double duration;
  @override
  final String plugin;

  @override
  String toString() {
    return 'Result(id: $id, fullId: $fullId, name: $name, certificationStatus: $certificationStatus, category: $category, categoryId: $categoryId, status: $status, outcome: $outcome, comments: $comments, ioLog: $ioLog, type: $type, project: $project, duration: $duration, plugin: $plugin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.fullId, fullId) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.certificationStatus, certificationStatus) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.outcome, outcome) &&
            const DeepCollectionEquality().equals(other.comments, comments) &&
            const DeepCollectionEquality().equals(other.ioLog, ioLog) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.project, project) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.plugin, plugin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(fullId),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(certificationStatus),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(outcome),
      const DeepCollectionEquality().hash(comments),
      const DeepCollectionEquality().hash(ioLog),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(project),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(plugin));

  @JsonKey(ignore: true)
  @override
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  factory _Result(
      {required final String id,
      @JsonKey(name: 'full_id') required final String fullId,
      required final String name,
      @JsonKey(name: 'certification_status') final String? certificationStatus,
      required final String category,
      @JsonKey(name: 'category_id') final String? categoryId,
      required final String status,
      required final String outcome,
      final String? comments,
      @JsonKey(name: 'io_log') required final String ioLog,
      required final String type,
      required final String project,
      required final double duration,
      required final String plugin}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'full_id')
  String get fullId;
  @override
  String get name;
  @override
  @JsonKey(name: 'certification_status')
  String? get certificationStatus;
  @override
  String get category;
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;
  @override
  String get status;
  @override
  String get outcome;
  @override
  String? get comments;
  @override
  @JsonKey(name: 'io_log')
  String get ioLog;
  @override
  String get type;
  @override
  String get project;
  @override
  double get duration;
  @override
  String get plugin;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
