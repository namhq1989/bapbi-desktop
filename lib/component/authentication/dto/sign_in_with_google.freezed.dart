// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_with_google.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInWithGoogleRequest _$SignInWithGoogleRequestFromJson(
    Map<String, dynamic> json) {
  return _SignInWithGoogleRequest.fromJson(json);
}

/// @nodoc
mixin _$SignInWithGoogleRequest {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInWithGoogleRequestCopyWith<SignInWithGoogleRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithGoogleRequestCopyWith<$Res> {
  factory $SignInWithGoogleRequestCopyWith(SignInWithGoogleRequest value,
          $Res Function(SignInWithGoogleRequest) then) =
      _$SignInWithGoogleRequestCopyWithImpl<$Res, SignInWithGoogleRequest>;
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class _$SignInWithGoogleRequestCopyWithImpl<$Res,
        $Val extends SignInWithGoogleRequest>
    implements $SignInWithGoogleRequestCopyWith<$Res> {
  _$SignInWithGoogleRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInWithGoogleRequestImplCopyWith<$Res>
    implements $SignInWithGoogleRequestCopyWith<$Res> {
  factory _$$SignInWithGoogleRequestImplCopyWith(
          _$SignInWithGoogleRequestImpl value,
          $Res Function(_$SignInWithGoogleRequestImpl) then) =
      __$$SignInWithGoogleRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class __$$SignInWithGoogleRequestImplCopyWithImpl<$Res>
    extends _$SignInWithGoogleRequestCopyWithImpl<$Res,
        _$SignInWithGoogleRequestImpl>
    implements _$$SignInWithGoogleRequestImplCopyWith<$Res> {
  __$$SignInWithGoogleRequestImplCopyWithImpl(
      _$SignInWithGoogleRequestImpl _value,
      $Res Function(_$SignInWithGoogleRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$SignInWithGoogleRequestImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInWithGoogleRequestImpl implements _SignInWithGoogleRequest {
  _$SignInWithGoogleRequestImpl({@JsonKey(name: 'token') required this.token});

  factory _$SignInWithGoogleRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInWithGoogleRequestImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;

  @override
  String toString() {
    return 'SignInWithGoogleRequest(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGoogleRequestImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithGoogleRequestImplCopyWith<_$SignInWithGoogleRequestImpl>
      get copyWith => __$$SignInWithGoogleRequestImplCopyWithImpl<
          _$SignInWithGoogleRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInWithGoogleRequestImplToJson(
      this,
    );
  }
}

abstract class _SignInWithGoogleRequest implements SignInWithGoogleRequest {
  factory _SignInWithGoogleRequest(
          {@JsonKey(name: 'token') required final String token}) =
      _$SignInWithGoogleRequestImpl;

  factory _SignInWithGoogleRequest.fromJson(Map<String, dynamic> json) =
      _$SignInWithGoogleRequestImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$SignInWithGoogleRequestImplCopyWith<_$SignInWithGoogleRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SignInWithGoogleResponse _$SignInWithGoogleResponseFromJson(
    Map<String, dynamic> json) {
  return _SignInWithGoogleResponse.fromJson(json);
}

/// @nodoc
mixin _$SignInWithGoogleResponse {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  SignInWithGoogleResponseData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInWithGoogleResponseCopyWith<SignInWithGoogleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithGoogleResponseCopyWith<$Res> {
  factory $SignInWithGoogleResponseCopyWith(SignInWithGoogleResponse value,
          $Res Function(SignInWithGoogleResponse) then) =
      _$SignInWithGoogleResponseCopyWithImpl<$Res, SignInWithGoogleResponse>;
  @useResult
  $Res call(
      {bool? success,
      String? message,
      String? code,
      SignInWithGoogleResponseData? data});

  $SignInWithGoogleResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SignInWithGoogleResponseCopyWithImpl<$Res,
        $Val extends SignInWithGoogleResponse>
    implements $SignInWithGoogleResponseCopyWith<$Res> {
  _$SignInWithGoogleResponseCopyWithImpl(this._value, this._then);

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
              as SignInWithGoogleResponseData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignInWithGoogleResponseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SignInWithGoogleResponseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInWithGoogleResponseImplCopyWith<$Res>
    implements $SignInWithGoogleResponseCopyWith<$Res> {
  factory _$$SignInWithGoogleResponseImplCopyWith(
          _$SignInWithGoogleResponseImpl value,
          $Res Function(_$SignInWithGoogleResponseImpl) then) =
      __$$SignInWithGoogleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? message,
      String? code,
      SignInWithGoogleResponseData? data});

  @override
  $SignInWithGoogleResponseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SignInWithGoogleResponseImplCopyWithImpl<$Res>
    extends _$SignInWithGoogleResponseCopyWithImpl<$Res,
        _$SignInWithGoogleResponseImpl>
    implements _$$SignInWithGoogleResponseImplCopyWith<$Res> {
  __$$SignInWithGoogleResponseImplCopyWithImpl(
      _$SignInWithGoogleResponseImpl _value,
      $Res Function(_$SignInWithGoogleResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? code = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SignInWithGoogleResponseImpl(
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
              as SignInWithGoogleResponseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInWithGoogleResponseImpl implements _SignInWithGoogleResponse {
  _$SignInWithGoogleResponseImpl(
      {this.success, this.message, this.code, this.data});

  factory _$SignInWithGoogleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInWithGoogleResponseImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final SignInWithGoogleResponseData? data;

  @override
  String toString() {
    return 'SignInWithGoogleResponse(success: $success, message: $message, code: $code, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGoogleResponseImpl &&
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
  _$$SignInWithGoogleResponseImplCopyWith<_$SignInWithGoogleResponseImpl>
      get copyWith => __$$SignInWithGoogleResponseImplCopyWithImpl<
          _$SignInWithGoogleResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInWithGoogleResponseImplToJson(
      this,
    );
  }
}

abstract class _SignInWithGoogleResponse implements SignInWithGoogleResponse {
  factory _SignInWithGoogleResponse(
          {final bool? success,
          final String? message,
          final String? code,
          final SignInWithGoogleResponseData? data}) =
      _$SignInWithGoogleResponseImpl;

  factory _SignInWithGoogleResponse.fromJson(Map<String, dynamic> json) =
      _$SignInWithGoogleResponseImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  String? get code;
  @override
  SignInWithGoogleResponseData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SignInWithGoogleResponseImplCopyWith<_$SignInWithGoogleResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SignInWithGoogleResponseData _$SignInWithGoogleResponseDataFromJson(
    Map<String, dynamic> json) {
  return _SignInWithGoogleResponseData.fromJson(json);
}

/// @nodoc
mixin _$SignInWithGoogleResponseData {
  @JsonKey(name: 'accessToken')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refreshToken')
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInWithGoogleResponseDataCopyWith<SignInWithGoogleResponseData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithGoogleResponseDataCopyWith<$Res> {
  factory $SignInWithGoogleResponseDataCopyWith(
          SignInWithGoogleResponseData value,
          $Res Function(SignInWithGoogleResponseData) then) =
      _$SignInWithGoogleResponseDataCopyWithImpl<$Res,
          SignInWithGoogleResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'accessToken') String? accessToken,
      @JsonKey(name: 'refreshToken') String? refreshToken});
}

/// @nodoc
class _$SignInWithGoogleResponseDataCopyWithImpl<$Res,
        $Val extends SignInWithGoogleResponseData>
    implements $SignInWithGoogleResponseDataCopyWith<$Res> {
  _$SignInWithGoogleResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInWithGoogleResponseDataImplCopyWith<$Res>
    implements $SignInWithGoogleResponseDataCopyWith<$Res> {
  factory _$$SignInWithGoogleResponseDataImplCopyWith(
          _$SignInWithGoogleResponseDataImpl value,
          $Res Function(_$SignInWithGoogleResponseDataImpl) then) =
      __$$SignInWithGoogleResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'accessToken') String? accessToken,
      @JsonKey(name: 'refreshToken') String? refreshToken});
}

/// @nodoc
class __$$SignInWithGoogleResponseDataImplCopyWithImpl<$Res>
    extends _$SignInWithGoogleResponseDataCopyWithImpl<$Res,
        _$SignInWithGoogleResponseDataImpl>
    implements _$$SignInWithGoogleResponseDataImplCopyWith<$Res> {
  __$$SignInWithGoogleResponseDataImplCopyWithImpl(
      _$SignInWithGoogleResponseDataImpl _value,
      $Res Function(_$SignInWithGoogleResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$SignInWithGoogleResponseDataImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInWithGoogleResponseDataImpl
    implements _SignInWithGoogleResponseData {
  _$SignInWithGoogleResponseDataImpl(
      {@JsonKey(name: 'accessToken') this.accessToken,
      @JsonKey(name: 'refreshToken') this.refreshToken});

  factory _$SignInWithGoogleResponseDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SignInWithGoogleResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'accessToken')
  final String? accessToken;
  @override
  @JsonKey(name: 'refreshToken')
  final String? refreshToken;

  @override
  String toString() {
    return 'SignInWithGoogleResponseData(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGoogleResponseDataImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithGoogleResponseDataImplCopyWith<
          _$SignInWithGoogleResponseDataImpl>
      get copyWith => __$$SignInWithGoogleResponseDataImplCopyWithImpl<
          _$SignInWithGoogleResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInWithGoogleResponseDataImplToJson(
      this,
    );
  }
}

abstract class _SignInWithGoogleResponseData
    implements SignInWithGoogleResponseData {
  factory _SignInWithGoogleResponseData(
          {@JsonKey(name: 'accessToken') final String? accessToken,
          @JsonKey(name: 'refreshToken') final String? refreshToken}) =
      _$SignInWithGoogleResponseDataImpl;

  factory _SignInWithGoogleResponseData.fromJson(Map<String, dynamic> json) =
      _$SignInWithGoogleResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'accessToken')
  String? get accessToken;
  @override
  @JsonKey(name: 'refreshToken')
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$SignInWithGoogleResponseDataImplCopyWith<
          _$SignInWithGoogleResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
