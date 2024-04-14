// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hydration_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HydrationEnableProfileRequest _$HydrationEnableProfileRequestFromJson(
    Map<String, dynamic> json) {
  return _HydrationEnableProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$HydrationEnableProfileRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HydrationEnableProfileRequestCopyWith<$Res> {
  factory $HydrationEnableProfileRequestCopyWith(
          HydrationEnableProfileRequest value,
          $Res Function(HydrationEnableProfileRequest) then) =
      _$HydrationEnableProfileRequestCopyWithImpl<$Res,
          HydrationEnableProfileRequest>;
}

/// @nodoc
class _$HydrationEnableProfileRequestCopyWithImpl<$Res,
        $Val extends HydrationEnableProfileRequest>
    implements $HydrationEnableProfileRequestCopyWith<$Res> {
  _$HydrationEnableProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HydrationEnableProfileRequestImplCopyWith<$Res> {
  factory _$$HydrationEnableProfileRequestImplCopyWith(
          _$HydrationEnableProfileRequestImpl value,
          $Res Function(_$HydrationEnableProfileRequestImpl) then) =
      __$$HydrationEnableProfileRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HydrationEnableProfileRequestImplCopyWithImpl<$Res>
    extends _$HydrationEnableProfileRequestCopyWithImpl<$Res,
        _$HydrationEnableProfileRequestImpl>
    implements _$$HydrationEnableProfileRequestImplCopyWith<$Res> {
  __$$HydrationEnableProfileRequestImplCopyWithImpl(
      _$HydrationEnableProfileRequestImpl _value,
      $Res Function(_$HydrationEnableProfileRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$HydrationEnableProfileRequestImpl
    implements _HydrationEnableProfileRequest {
  _$HydrationEnableProfileRequestImpl();

  factory _$HydrationEnableProfileRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HydrationEnableProfileRequestImplFromJson(json);

  @override
  String toString() {
    return 'HydrationEnableProfileRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HydrationEnableProfileRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$HydrationEnableProfileRequestImplToJson(
      this,
    );
  }
}

abstract class _HydrationEnableProfileRequest
    implements HydrationEnableProfileRequest {
  factory _HydrationEnableProfileRequest() =
      _$HydrationEnableProfileRequestImpl;

  factory _HydrationEnableProfileRequest.fromJson(Map<String, dynamic> json) =
      _$HydrationEnableProfileRequestImpl.fromJson;
}

HydrationEnableProfileResponse _$HydrationEnableProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _HydrationEnableProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$HydrationEnableProfileResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  Object? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HydrationEnableProfileResponseCopyWith<HydrationEnableProfileResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HydrationEnableProfileResponseCopyWith<$Res> {
  factory $HydrationEnableProfileResponseCopyWith(
          HydrationEnableProfileResponse value,
          $Res Function(HydrationEnableProfileResponse) then) =
      _$HydrationEnableProfileResponseCopyWithImpl<$Res,
          HydrationEnableProfileResponse>;
  @useResult
  $Res call({bool? success, String? message, String? code, Object? data});
}

/// @nodoc
class _$HydrationEnableProfileResponseCopyWithImpl<$Res,
        $Val extends HydrationEnableProfileResponse>
    implements $HydrationEnableProfileResponseCopyWith<$Res> {
  _$HydrationEnableProfileResponseCopyWithImpl(this._value, this._then);

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
      data: freezed == data ? _value.data : data,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HydrationEnableProfileResponseImplCopyWith<$Res>
    implements $HydrationEnableProfileResponseCopyWith<$Res> {
  factory _$$HydrationEnableProfileResponseImplCopyWith(
          _$HydrationEnableProfileResponseImpl value,
          $Res Function(_$HydrationEnableProfileResponseImpl) then) =
      __$$HydrationEnableProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, String? code, Object? data});
}

/// @nodoc
class __$$HydrationEnableProfileResponseImplCopyWithImpl<$Res>
    extends _$HydrationEnableProfileResponseCopyWithImpl<$Res,
        _$HydrationEnableProfileResponseImpl>
    implements _$$HydrationEnableProfileResponseImplCopyWith<$Res> {
  __$$HydrationEnableProfileResponseImplCopyWithImpl(
      _$HydrationEnableProfileResponseImpl _value,
      $Res Function(_$HydrationEnableProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HydrationEnableProfileResponseImpl(
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
      data: freezed == data ? _value.data : data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HydrationEnableProfileResponseImpl
    implements _HydrationEnableProfileResponse {
  _$HydrationEnableProfileResponseImpl(
      {this.success, this.message, this.code, this.data});

  factory _$HydrationEnableProfileResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HydrationEnableProfileResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final Object? data;

  @override
  String toString() {
    return 'HydrationEnableProfileResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HydrationEnableProfileResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, code,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HydrationEnableProfileResponseImplCopyWith<
          _$HydrationEnableProfileResponseImpl>
      get copyWith => __$$HydrationEnableProfileResponseImplCopyWithImpl<
          _$HydrationEnableProfileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HydrationEnableProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _HydrationEnableProfileResponse
    implements HydrationEnableProfileResponse {
  factory _HydrationEnableProfileResponse(
      {final bool? success,
      final String? message,
      final String? code,
      final Object? data}) = _$HydrationEnableProfileResponseImpl;

  factory _HydrationEnableProfileResponse.fromJson(Map<String, dynamic> json) =
      _$HydrationEnableProfileResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  String? get code;
  @override
  Object? get data;
  @override
  @JsonKey(ignore: true)
  _$$HydrationEnableProfileResponseImplCopyWith<
          _$HydrationEnableProfileResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HydrationDisableProfileRequest _$HydrationDisableProfileRequestFromJson(
    Map<String, dynamic> json) {
  return _HydrationDisableProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$HydrationDisableProfileRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HydrationDisableProfileRequestCopyWith<$Res> {
  factory $HydrationDisableProfileRequestCopyWith(
          HydrationDisableProfileRequest value,
          $Res Function(HydrationDisableProfileRequest) then) =
      _$HydrationDisableProfileRequestCopyWithImpl<$Res,
          HydrationDisableProfileRequest>;
}

/// @nodoc
class _$HydrationDisableProfileRequestCopyWithImpl<$Res,
        $Val extends HydrationDisableProfileRequest>
    implements $HydrationDisableProfileRequestCopyWith<$Res> {
  _$HydrationDisableProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HydrationDisableProfileRequestImplCopyWith<$Res> {
  factory _$$HydrationDisableProfileRequestImplCopyWith(
          _$HydrationDisableProfileRequestImpl value,
          $Res Function(_$HydrationDisableProfileRequestImpl) then) =
      __$$HydrationDisableProfileRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HydrationDisableProfileRequestImplCopyWithImpl<$Res>
    extends _$HydrationDisableProfileRequestCopyWithImpl<$Res,
        _$HydrationDisableProfileRequestImpl>
    implements _$$HydrationDisableProfileRequestImplCopyWith<$Res> {
  __$$HydrationDisableProfileRequestImplCopyWithImpl(
      _$HydrationDisableProfileRequestImpl _value,
      $Res Function(_$HydrationDisableProfileRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$HydrationDisableProfileRequestImpl
    implements _HydrationDisableProfileRequest {
  _$HydrationDisableProfileRequestImpl();

  factory _$HydrationDisableProfileRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HydrationDisableProfileRequestImplFromJson(json);

  @override
  String toString() {
    return 'HydrationDisableProfileRequest()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HydrationDisableProfileRequestImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$HydrationDisableProfileRequestImplToJson(
      this,
    );
  }
}

abstract class _HydrationDisableProfileRequest
    implements HydrationDisableProfileRequest {
  factory _HydrationDisableProfileRequest() =
      _$HydrationDisableProfileRequestImpl;

  factory _HydrationDisableProfileRequest.fromJson(Map<String, dynamic> json) =
      _$HydrationDisableProfileRequestImpl.fromJson;
}

HydrationDisableProfileResponse _$HydrationDisableProfileResponseFromJson(
    Map<String, dynamic> json) {
  return _HydrationDisableProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$HydrationDisableProfileResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  Object? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HydrationDisableProfileResponseCopyWith<HydrationDisableProfileResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HydrationDisableProfileResponseCopyWith<$Res> {
  factory $HydrationDisableProfileResponseCopyWith(
          HydrationDisableProfileResponse value,
          $Res Function(HydrationDisableProfileResponse) then) =
      _$HydrationDisableProfileResponseCopyWithImpl<$Res,
          HydrationDisableProfileResponse>;
  @useResult
  $Res call({bool? success, String? message, String? code, Object? data});
}

/// @nodoc
class _$HydrationDisableProfileResponseCopyWithImpl<$Res,
        $Val extends HydrationDisableProfileResponse>
    implements $HydrationDisableProfileResponseCopyWith<$Res> {
  _$HydrationDisableProfileResponseCopyWithImpl(this._value, this._then);

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
      data: freezed == data ? _value.data : data,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HydrationDisableProfileResponseImplCopyWith<$Res>
    implements $HydrationDisableProfileResponseCopyWith<$Res> {
  factory _$$HydrationDisableProfileResponseImplCopyWith(
          _$HydrationDisableProfileResponseImpl value,
          $Res Function(_$HydrationDisableProfileResponseImpl) then) =
      __$$HydrationDisableProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, String? code, Object? data});
}

/// @nodoc
class __$$HydrationDisableProfileResponseImplCopyWithImpl<$Res>
    extends _$HydrationDisableProfileResponseCopyWithImpl<$Res,
        _$HydrationDisableProfileResponseImpl>
    implements _$$HydrationDisableProfileResponseImplCopyWith<$Res> {
  __$$HydrationDisableProfileResponseImplCopyWithImpl(
      _$HydrationDisableProfileResponseImpl _value,
      $Res Function(_$HydrationDisableProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HydrationDisableProfileResponseImpl(
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
      data: freezed == data ? _value.data : data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HydrationDisableProfileResponseImpl
    implements _HydrationDisableProfileResponse {
  _$HydrationDisableProfileResponseImpl(
      {this.success, this.message, this.code, this.data});

  factory _$HydrationDisableProfileResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HydrationDisableProfileResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final Object? data;

  @override
  String toString() {
    return 'HydrationDisableProfileResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HydrationDisableProfileResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, code,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HydrationDisableProfileResponseImplCopyWith<
          _$HydrationDisableProfileResponseImpl>
      get copyWith => __$$HydrationDisableProfileResponseImplCopyWithImpl<
          _$HydrationDisableProfileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HydrationDisableProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _HydrationDisableProfileResponse
    implements HydrationDisableProfileResponse {
  factory _HydrationDisableProfileResponse(
      {final bool? success,
      final String? message,
      final String? code,
      final Object? data}) = _$HydrationDisableProfileResponseImpl;

  factory _HydrationDisableProfileResponse.fromJson(Map<String, dynamic> json) =
      _$HydrationDisableProfileResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  String? get code;
  @override
  Object? get data;
  @override
  @JsonKey(ignore: true)
  _$$HydrationDisableProfileResponseImplCopyWith<
          _$HydrationDisableProfileResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
