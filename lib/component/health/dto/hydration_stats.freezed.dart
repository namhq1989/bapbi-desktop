// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hydration_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HydrationStatsRequest _$HydrationStatsRequestFromJson(
    Map<String, dynamic> json) {
  return _HydrationStatsRequest.fromJson(json);
}

/// @nodoc
mixin _$HydrationStatsRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HydrationStatsRequestCopyWith<$Res> {
  factory $HydrationStatsRequestCopyWith(HydrationStatsRequest value,
          $Res Function(HydrationStatsRequest) then) =
      _$HydrationStatsRequestCopyWithImpl<$Res, HydrationStatsRequest>;
}

/// @nodoc
class _$HydrationStatsRequestCopyWithImpl<$Res,
        $Val extends HydrationStatsRequest>
    implements $HydrationStatsRequestCopyWith<$Res> {
  _$HydrationStatsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HydrationStatsRequestImplCopyWith<$Res> {
  factory _$$HydrationStatsRequestImplCopyWith(
          _$HydrationStatsRequestImpl value,
          $Res Function(_$HydrationStatsRequestImpl) then) =
      __$$HydrationStatsRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HydrationStatsRequestImplCopyWithImpl<$Res>
    extends _$HydrationStatsRequestCopyWithImpl<$Res,
        _$HydrationStatsRequestImpl>
    implements _$$HydrationStatsRequestImplCopyWith<$Res> {
  __$$HydrationStatsRequestImplCopyWithImpl(_$HydrationStatsRequestImpl _value,
      $Res Function(_$HydrationStatsRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$HydrationStatsRequestImpl implements _HydrationStatsRequest {
  _$HydrationStatsRequestImpl();

  factory _$HydrationStatsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$HydrationStatsRequestImplFromJson(json);

  @override
  String toString() {
    return 'HydrationStatsRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HydrationStatsRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$HydrationStatsRequestImplToJson(
      this,
    );
  }
}

abstract class _HydrationStatsRequest implements HydrationStatsRequest {
  factory _HydrationStatsRequest() = _$HydrationStatsRequestImpl;

  factory _HydrationStatsRequest.fromJson(Map<String, dynamic> json) =
      _$HydrationStatsRequestImpl.fromJson;
}

HydrationStatsResponse _$HydrationStatsResponseFromJson(
    Map<String, dynamic> json) {
  return _HydrationStatsResponse.fromJson(json);
}

/// @nodoc
mixin _$HydrationStatsResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  HydrationStatsResponseData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HydrationStatsResponseCopyWith<HydrationStatsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HydrationStatsResponseCopyWith<$Res> {
  factory $HydrationStatsResponseCopyWith(HydrationStatsResponse value,
          $Res Function(HydrationStatsResponse) then) =
      _$HydrationStatsResponseCopyWithImpl<$Res, HydrationStatsResponse>;
  @useResult
  $Res call(
      {bool? success,
      String? message,
      String? code,
      HydrationStatsResponseData? data});

  $HydrationStatsResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$HydrationStatsResponseCopyWithImpl<$Res,
        $Val extends HydrationStatsResponse>
    implements $HydrationStatsResponseCopyWith<$Res> {
  _$HydrationStatsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HydrationStatsResponseData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HydrationStatsResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HydrationStatsResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HydrationStatsResponseImplCopyWith<$Res>
    implements $HydrationStatsResponseCopyWith<$Res> {
  factory _$$HydrationStatsResponseImplCopyWith(
          _$HydrationStatsResponseImpl value,
          $Res Function(_$HydrationStatsResponseImpl) then) =
      __$$HydrationStatsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? message,
      String? code,
      HydrationStatsResponseData? data});

  @override
  $HydrationStatsResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$HydrationStatsResponseImplCopyWithImpl<$Res>
    extends _$HydrationStatsResponseCopyWithImpl<$Res,
        _$HydrationStatsResponseImpl>
    implements _$$HydrationStatsResponseImplCopyWith<$Res> {
  __$$HydrationStatsResponseImplCopyWithImpl(
      _$HydrationStatsResponseImpl _value,
      $Res Function(_$HydrationStatsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HydrationStatsResponseImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HydrationStatsResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HydrationStatsResponseImpl implements _HydrationStatsResponse {
  _$HydrationStatsResponseImpl(
      {this.success, this.message, this.code, this.data});

  factory _$HydrationStatsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HydrationStatsResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final HydrationStatsResponseData? data;

  @override
  String toString() {
    return 'HydrationStatsResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HydrationStatsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, code, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HydrationStatsResponseImplCopyWith<_$HydrationStatsResponseImpl>
      get copyWith => __$$HydrationStatsResponseImplCopyWithImpl<
          _$HydrationStatsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HydrationStatsResponseImplToJson(
      this,
    );
  }
}

abstract class _HydrationStatsResponse implements HydrationStatsResponse {
  factory _HydrationStatsResponse(
      {final bool? success,
      final String? message,
      final String? code,
      final HydrationStatsResponseData? data}) = _$HydrationStatsResponseImpl;

  factory _HydrationStatsResponse.fromJson(Map<String, dynamic> json) =
      _$HydrationStatsResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  String? get code;
  @override
  HydrationStatsResponseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$HydrationStatsResponseImplCopyWith<_$HydrationStatsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HydrationStatsResponseData _$HydrationStatsResponseDataFromJson(
    Map<String, dynamic> json) {
  return _HydrationStatsResponseData.fromJson(json);
}

/// @nodoc
mixin _$HydrationStatsResponseData {
  @JsonKey(name: 'todayIntakes')
  List<HydrationStatsTodayIntakeData>? get todayIntakes =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'todayProgress')
  HydrationStatsTodayProgress? get todayProgress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'longestStreakValue')
  int? get longestStreakValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'longestStreakAt')
  DateTime? get longestStreakAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'highestIntakeAmountValue')
  int? get highestIntakeAmountValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'highestIntakeAmountAt')
  DateTime? get highestIntakeAmountAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HydrationStatsResponseDataCopyWith<HydrationStatsResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HydrationStatsResponseDataCopyWith<$Res> {
  factory $HydrationStatsResponseDataCopyWith(HydrationStatsResponseData value,
          $Res Function(HydrationStatsResponseData) then) =
      _$HydrationStatsResponseDataCopyWithImpl<$Res,
          HydrationStatsResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'todayIntakes')
      List<HydrationStatsTodayIntakeData>? todayIntakes,
      @JsonKey(name: 'todayProgress')
      HydrationStatsTodayProgress? todayProgress,
      @JsonKey(name: 'longestStreakValue') int? longestStreakValue,
      @JsonKey(name: 'longestStreakAt') DateTime? longestStreakAt,
      @JsonKey(name: 'highestIntakeAmountValue') int? highestIntakeAmountValue,
      @JsonKey(name: 'highestIntakeAmountAt') DateTime? highestIntakeAmountAt});

  $HydrationStatsTodayProgressCopyWith<$Res>? get todayProgress;
}

/// @nodoc
class _$HydrationStatsResponseDataCopyWithImpl<$Res,
        $Val extends HydrationStatsResponseData>
    implements $HydrationStatsResponseDataCopyWith<$Res> {
  _$HydrationStatsResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayIntakes = freezed,
    Object? todayProgress = freezed,
    Object? longestStreakValue = freezed,
    Object? longestStreakAt = freezed,
    Object? highestIntakeAmountValue = freezed,
    Object? highestIntakeAmountAt = freezed,
  }) {
    return _then(_value.copyWith(
      todayIntakes: freezed == todayIntakes
          ? _value.todayIntakes
          : todayIntakes // ignore: cast_nullable_to_non_nullable
              as List<HydrationStatsTodayIntakeData>?,
      todayProgress: freezed == todayProgress
          ? _value.todayProgress
          : todayProgress // ignore: cast_nullable_to_non_nullable
              as HydrationStatsTodayProgress?,
      longestStreakValue: freezed == longestStreakValue
          ? _value.longestStreakValue
          : longestStreakValue // ignore: cast_nullable_to_non_nullable
              as int?,
      longestStreakAt: freezed == longestStreakAt
          ? _value.longestStreakAt
          : longestStreakAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      highestIntakeAmountValue: freezed == highestIntakeAmountValue
          ? _value.highestIntakeAmountValue
          : highestIntakeAmountValue // ignore: cast_nullable_to_non_nullable
              as int?,
      highestIntakeAmountAt: freezed == highestIntakeAmountAt
          ? _value.highestIntakeAmountAt
          : highestIntakeAmountAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HydrationStatsTodayProgressCopyWith<$Res>? get todayProgress {
    if (_value.todayProgress == null) {
      return null;
    }

    return $HydrationStatsTodayProgressCopyWith<$Res>(_value.todayProgress!,
        (value) {
      return _then(_value.copyWith(todayProgress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HydrationStatsResponseDataImplCopyWith<$Res>
    implements $HydrationStatsResponseDataCopyWith<$Res> {
  factory _$$HydrationStatsResponseDataImplCopyWith(
          _$HydrationStatsResponseDataImpl value,
          $Res Function(_$HydrationStatsResponseDataImpl) then) =
      __$$HydrationStatsResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'todayIntakes')
      List<HydrationStatsTodayIntakeData>? todayIntakes,
      @JsonKey(name: 'todayProgress')
      HydrationStatsTodayProgress? todayProgress,
      @JsonKey(name: 'longestStreakValue') int? longestStreakValue,
      @JsonKey(name: 'longestStreakAt') DateTime? longestStreakAt,
      @JsonKey(name: 'highestIntakeAmountValue') int? highestIntakeAmountValue,
      @JsonKey(name: 'highestIntakeAmountAt') DateTime? highestIntakeAmountAt});

  @override
  $HydrationStatsTodayProgressCopyWith<$Res>? get todayProgress;
}

/// @nodoc
class __$$HydrationStatsResponseDataImplCopyWithImpl<$Res>
    extends _$HydrationStatsResponseDataCopyWithImpl<$Res,
        _$HydrationStatsResponseDataImpl>
    implements _$$HydrationStatsResponseDataImplCopyWith<$Res> {
  __$$HydrationStatsResponseDataImplCopyWithImpl(
      _$HydrationStatsResponseDataImpl _value,
      $Res Function(_$HydrationStatsResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todayIntakes = freezed,
    Object? todayProgress = freezed,
    Object? longestStreakValue = freezed,
    Object? longestStreakAt = freezed,
    Object? highestIntakeAmountValue = freezed,
    Object? highestIntakeAmountAt = freezed,
  }) {
    return _then(_$HydrationStatsResponseDataImpl(
      todayIntakes: freezed == todayIntakes
          ? _value._todayIntakes
          : todayIntakes // ignore: cast_nullable_to_non_nullable
              as List<HydrationStatsTodayIntakeData>?,
      todayProgress: freezed == todayProgress
          ? _value.todayProgress
          : todayProgress // ignore: cast_nullable_to_non_nullable
              as HydrationStatsTodayProgress?,
      longestStreakValue: freezed == longestStreakValue
          ? _value.longestStreakValue
          : longestStreakValue // ignore: cast_nullable_to_non_nullable
              as int?,
      longestStreakAt: freezed == longestStreakAt
          ? _value.longestStreakAt
          : longestStreakAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      highestIntakeAmountValue: freezed == highestIntakeAmountValue
          ? _value.highestIntakeAmountValue
          : highestIntakeAmountValue // ignore: cast_nullable_to_non_nullable
              as int?,
      highestIntakeAmountAt: freezed == highestIntakeAmountAt
          ? _value.highestIntakeAmountAt
          : highestIntakeAmountAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HydrationStatsResponseDataImpl implements _HydrationStatsResponseData {
  _$HydrationStatsResponseDataImpl(
      {@JsonKey(name: 'todayIntakes')
      final List<HydrationStatsTodayIntakeData>? todayIntakes,
      @JsonKey(name: 'todayProgress') this.todayProgress,
      @JsonKey(name: 'longestStreakValue') this.longestStreakValue,
      @JsonKey(name: 'longestStreakAt') this.longestStreakAt,
      @JsonKey(name: 'highestIntakeAmountValue') this.highestIntakeAmountValue,
      @JsonKey(name: 'highestIntakeAmountAt') this.highestIntakeAmountAt})
      : _todayIntakes = todayIntakes;

  factory _$HydrationStatsResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HydrationStatsResponseDataImplFromJson(json);

  final List<HydrationStatsTodayIntakeData>? _todayIntakes;
  @override
  @JsonKey(name: 'todayIntakes')
  List<HydrationStatsTodayIntakeData>? get todayIntakes {
    final value = _todayIntakes;
    if (value == null) return null;
    if (_todayIntakes is EqualUnmodifiableListView) return _todayIntakes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'todayProgress')
  final HydrationStatsTodayProgress? todayProgress;
  @override
  @JsonKey(name: 'longestStreakValue')
  final int? longestStreakValue;
  @override
  @JsonKey(name: 'longestStreakAt')
  final DateTime? longestStreakAt;
  @override
  @JsonKey(name: 'highestIntakeAmountValue')
  final int? highestIntakeAmountValue;
  @override
  @JsonKey(name: 'highestIntakeAmountAt')
  final DateTime? highestIntakeAmountAt;

  @override
  String toString() {
    return 'HydrationStatsResponseData(todayIntakes: $todayIntakes, todayProgress: $todayProgress, longestStreakValue: $longestStreakValue, longestStreakAt: $longestStreakAt, highestIntakeAmountValue: $highestIntakeAmountValue, highestIntakeAmountAt: $highestIntakeAmountAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HydrationStatsResponseDataImpl &&
            const DeepCollectionEquality()
                .equals(other._todayIntakes, _todayIntakes) &&
            (identical(other.todayProgress, todayProgress) ||
                other.todayProgress == todayProgress) &&
            (identical(other.longestStreakValue, longestStreakValue) ||
                other.longestStreakValue == longestStreakValue) &&
            (identical(other.longestStreakAt, longestStreakAt) ||
                other.longestStreakAt == longestStreakAt) &&
            (identical(
                    other.highestIntakeAmountValue, highestIntakeAmountValue) ||
                other.highestIntakeAmountValue == highestIntakeAmountValue) &&
            (identical(other.highestIntakeAmountAt, highestIntakeAmountAt) ||
                other.highestIntakeAmountAt == highestIntakeAmountAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todayIntakes),
      todayProgress,
      longestStreakValue,
      longestStreakAt,
      highestIntakeAmountValue,
      highestIntakeAmountAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HydrationStatsResponseDataImplCopyWith<_$HydrationStatsResponseDataImpl>
      get copyWith => __$$HydrationStatsResponseDataImplCopyWithImpl<
          _$HydrationStatsResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HydrationStatsResponseDataImplToJson(
      this,
    );
  }
}

abstract class _HydrationStatsResponseData
    implements HydrationStatsResponseData {
  factory _HydrationStatsResponseData(
          {@JsonKey(name: 'todayIntakes')
          final List<HydrationStatsTodayIntakeData>? todayIntakes,
          @JsonKey(name: 'todayProgress')
          final HydrationStatsTodayProgress? todayProgress,
          @JsonKey(name: 'longestStreakValue') final int? longestStreakValue,
          @JsonKey(name: 'longestStreakAt') final DateTime? longestStreakAt,
          @JsonKey(name: 'highestIntakeAmountValue')
          final int? highestIntakeAmountValue,
          @JsonKey(name: 'highestIntakeAmountAt')
          final DateTime? highestIntakeAmountAt}) =
      _$HydrationStatsResponseDataImpl;

  factory _HydrationStatsResponseData.fromJson(Map<String, dynamic> json) =
      _$HydrationStatsResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'todayIntakes')
  List<HydrationStatsTodayIntakeData>? get todayIntakes;
  @override
  @JsonKey(name: 'todayProgress')
  HydrationStatsTodayProgress? get todayProgress;
  @override
  @JsonKey(name: 'longestStreakValue')
  int? get longestStreakValue;
  @override
  @JsonKey(name: 'longestStreakAt')
  DateTime? get longestStreakAt;
  @override
  @JsonKey(name: 'highestIntakeAmountValue')
  int? get highestIntakeAmountValue;
  @override
  @JsonKey(name: 'highestIntakeAmountAt')
  DateTime? get highestIntakeAmountAt;
  @override
  @JsonKey(ignore: true)
  _$$HydrationStatsResponseDataImplCopyWith<_$HydrationStatsResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HydrationStatsTodayIntakeData _$HydrationStatsTodayIntakeDataFromJson(
    Map<String, dynamic> json) {
  return _HydrationStatsTodayIntakeData.fromJson(json);
}

/// @nodoc
mixin _$HydrationStatsTodayIntakeData {
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'intakeAt')
  DateTime? get intakeAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HydrationStatsTodayIntakeDataCopyWith<HydrationStatsTodayIntakeData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HydrationStatsTodayIntakeDataCopyWith<$Res> {
  factory $HydrationStatsTodayIntakeDataCopyWith(
          HydrationStatsTodayIntakeData value,
          $Res Function(HydrationStatsTodayIntakeData) then) =
      _$HydrationStatsTodayIntakeDataCopyWithImpl<$Res,
          HydrationStatsTodayIntakeData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'intakeAt') DateTime? intakeAt,
      @JsonKey(name: 'createdAt') DateTime? createdAt});
}

/// @nodoc
class _$HydrationStatsTodayIntakeDataCopyWithImpl<$Res,
        $Val extends HydrationStatsTodayIntakeData>
    implements $HydrationStatsTodayIntakeDataCopyWith<$Res> {
  _$HydrationStatsTodayIntakeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? intakeAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      intakeAt: freezed == intakeAt
          ? _value.intakeAt
          : intakeAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HydrationStatsTodayIntakeDataImplCopyWith<$Res>
    implements $HydrationStatsTodayIntakeDataCopyWith<$Res> {
  factory _$$HydrationStatsTodayIntakeDataImplCopyWith(
          _$HydrationStatsTodayIntakeDataImpl value,
          $Res Function(_$HydrationStatsTodayIntakeDataImpl) then) =
      __$$HydrationStatsTodayIntakeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'intakeAt') DateTime? intakeAt,
      @JsonKey(name: 'createdAt') DateTime? createdAt});
}

/// @nodoc
class __$$HydrationStatsTodayIntakeDataImplCopyWithImpl<$Res>
    extends _$HydrationStatsTodayIntakeDataCopyWithImpl<$Res,
        _$HydrationStatsTodayIntakeDataImpl>
    implements _$$HydrationStatsTodayIntakeDataImplCopyWith<$Res> {
  __$$HydrationStatsTodayIntakeDataImplCopyWithImpl(
      _$HydrationStatsTodayIntakeDataImpl _value,
      $Res Function(_$HydrationStatsTodayIntakeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? intakeAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$HydrationStatsTodayIntakeDataImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      intakeAt: freezed == intakeAt
          ? _value.intakeAt
          : intakeAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HydrationStatsTodayIntakeDataImpl
    implements _HydrationStatsTodayIntakeData {
  _$HydrationStatsTodayIntakeDataImpl(
      {@JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'intakeAt') this.intakeAt,
      @JsonKey(name: 'createdAt') this.createdAt});

  factory _$HydrationStatsTodayIntakeDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HydrationStatsTodayIntakeDataImplFromJson(json);

  @override
  @JsonKey(name: 'amount')
  final String? amount;
  @override
  @JsonKey(name: 'intakeAt')
  final DateTime? intakeAt;
  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'HydrationStatsTodayIntakeData(amount: $amount, intakeAt: $intakeAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HydrationStatsTodayIntakeDataImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.intakeAt, intakeAt) ||
                other.intakeAt == intakeAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, intakeAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HydrationStatsTodayIntakeDataImplCopyWith<
          _$HydrationStatsTodayIntakeDataImpl>
      get copyWith => __$$HydrationStatsTodayIntakeDataImplCopyWithImpl<
          _$HydrationStatsTodayIntakeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HydrationStatsTodayIntakeDataImplToJson(
      this,
    );
  }
}

abstract class _HydrationStatsTodayIntakeData
    implements HydrationStatsTodayIntakeData {
  factory _HydrationStatsTodayIntakeData(
          {@JsonKey(name: 'amount') final String? amount,
          @JsonKey(name: 'intakeAt') final DateTime? intakeAt,
          @JsonKey(name: 'createdAt') final DateTime? createdAt}) =
      _$HydrationStatsTodayIntakeDataImpl;

  factory _HydrationStatsTodayIntakeData.fromJson(Map<String, dynamic> json) =
      _$HydrationStatsTodayIntakeDataImpl.fromJson;

  @override
  @JsonKey(name: 'amount')
  String? get amount;
  @override
  @JsonKey(name: 'intakeAt')
  DateTime? get intakeAt;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$HydrationStatsTodayIntakeDataImplCopyWith<
          _$HydrationStatsTodayIntakeDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HydrationStatsTodayProgress _$HydrationStatsTodayProgressFromJson(
    Map<String, dynamic> json) {
  return _HydrationStatsTodayProgress.fromJson(json);
}

/// @nodoc
mixin _$HydrationStatsTodayProgress {
  @JsonKey(name: 'goal')
  String? get goal => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed')
  int? get completed => throw _privateConstructorUsedError;
  @JsonKey(name: 'isAchieved')
  bool? get isAchieved => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HydrationStatsTodayProgressCopyWith<HydrationStatsTodayProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HydrationStatsTodayProgressCopyWith<$Res> {
  factory $HydrationStatsTodayProgressCopyWith(
          HydrationStatsTodayProgress value,
          $Res Function(HydrationStatsTodayProgress) then) =
      _$HydrationStatsTodayProgressCopyWithImpl<$Res,
          HydrationStatsTodayProgress>;
  @useResult
  $Res call(
      {@JsonKey(name: 'goal') String? goal,
      @JsonKey(name: 'completed') int? completed,
      @JsonKey(name: 'isAchieved') bool? isAchieved});
}

/// @nodoc
class _$HydrationStatsTodayProgressCopyWithImpl<$Res,
        $Val extends HydrationStatsTodayProgress>
    implements $HydrationStatsTodayProgressCopyWith<$Res> {
  _$HydrationStatsTodayProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goal = freezed,
    Object? completed = freezed,
    Object? isAchieved = freezed,
  }) {
    return _then(_value.copyWith(
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int?,
      isAchieved: freezed == isAchieved
          ? _value.isAchieved
          : isAchieved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HydrationStatsTodayProgressImplCopyWith<$Res>
    implements $HydrationStatsTodayProgressCopyWith<$Res> {
  factory _$$HydrationStatsTodayProgressImplCopyWith(
          _$HydrationStatsTodayProgressImpl value,
          $Res Function(_$HydrationStatsTodayProgressImpl) then) =
      __$$HydrationStatsTodayProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'goal') String? goal,
      @JsonKey(name: 'completed') int? completed,
      @JsonKey(name: 'isAchieved') bool? isAchieved});
}

/// @nodoc
class __$$HydrationStatsTodayProgressImplCopyWithImpl<$Res>
    extends _$HydrationStatsTodayProgressCopyWithImpl<$Res,
        _$HydrationStatsTodayProgressImpl>
    implements _$$HydrationStatsTodayProgressImplCopyWith<$Res> {
  __$$HydrationStatsTodayProgressImplCopyWithImpl(
      _$HydrationStatsTodayProgressImpl _value,
      $Res Function(_$HydrationStatsTodayProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goal = freezed,
    Object? completed = freezed,
    Object? isAchieved = freezed,
  }) {
    return _then(_$HydrationStatsTodayProgressImpl(
      goal: freezed == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as int?,
      isAchieved: freezed == isAchieved
          ? _value.isAchieved
          : isAchieved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HydrationStatsTodayProgressImpl
    implements _HydrationStatsTodayProgress {
  _$HydrationStatsTodayProgressImpl(
      {@JsonKey(name: 'goal') this.goal,
      @JsonKey(name: 'completed') this.completed,
      @JsonKey(name: 'isAchieved') this.isAchieved});

  factory _$HydrationStatsTodayProgressImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HydrationStatsTodayProgressImplFromJson(json);

  @override
  @JsonKey(name: 'goal')
  final String? goal;
  @override
  @JsonKey(name: 'completed')
  final int? completed;
  @override
  @JsonKey(name: 'isAchieved')
  final bool? isAchieved;

  @override
  String toString() {
    return 'HydrationStatsTodayProgress(goal: $goal, completed: $completed, isAchieved: $isAchieved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HydrationStatsTodayProgressImpl &&
            (identical(other.goal, goal) || other.goal == goal) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.isAchieved, isAchieved) ||
                other.isAchieved == isAchieved));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, goal, completed, isAchieved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HydrationStatsTodayProgressImplCopyWith<_$HydrationStatsTodayProgressImpl>
      get copyWith => __$$HydrationStatsTodayProgressImplCopyWithImpl<
          _$HydrationStatsTodayProgressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HydrationStatsTodayProgressImplToJson(
      this,
    );
  }
}

abstract class _HydrationStatsTodayProgress
    implements HydrationStatsTodayProgress {
  factory _HydrationStatsTodayProgress(
          {@JsonKey(name: 'goal') final String? goal,
          @JsonKey(name: 'completed') final int? completed,
          @JsonKey(name: 'isAchieved') final bool? isAchieved}) =
      _$HydrationStatsTodayProgressImpl;

  factory _HydrationStatsTodayProgress.fromJson(Map<String, dynamic> json) =
      _$HydrationStatsTodayProgressImpl.fromJson;

  @override
  @JsonKey(name: 'goal')
  String? get goal;
  @override
  @JsonKey(name: 'completed')
  int? get completed;
  @override
  @JsonKey(name: 'isAchieved')
  bool? get isAchieved;
  @override
  @JsonKey(ignore: true)
  _$$HydrationStatsTodayProgressImplCopyWith<_$HydrationStatsTodayProgressImpl>
      get copyWith => throw _privateConstructorUsedError;
}
