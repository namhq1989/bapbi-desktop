// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_google_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExchangeGoogleCodeRequest _$ExchangeGoogleCodeRequestFromJson(
    Map<String, dynamic> json) {
  return _ExchangeGoogleCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$ExchangeGoogleCodeRequest {
  @JsonKey(name: 'code')
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  String get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_secret')
  String get clientSecret => throw _privateConstructorUsedError;
  @JsonKey(name: 'redirect_uri')
  String get redirectUri => throw _privateConstructorUsedError;
  @JsonKey(name: 'grant_type', defaultValue: 'authorization_code')
  String? get grantType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeGoogleCodeRequestCopyWith<ExchangeGoogleCodeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeGoogleCodeRequestCopyWith<$Res> {
  factory $ExchangeGoogleCodeRequestCopyWith(ExchangeGoogleCodeRequest value,
          $Res Function(ExchangeGoogleCodeRequest) then) =
      _$ExchangeGoogleCodeRequestCopyWithImpl<$Res, ExchangeGoogleCodeRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'client_secret') String clientSecret,
      @JsonKey(name: 'redirect_uri') String redirectUri,
      @JsonKey(name: 'grant_type', defaultValue: 'authorization_code')
      String? grantType});
}

/// @nodoc
class _$ExchangeGoogleCodeRequestCopyWithImpl<$Res,
        $Val extends ExchangeGoogleCodeRequest>
    implements $ExchangeGoogleCodeRequestCopyWith<$Res> {
  _$ExchangeGoogleCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? clientId = null,
    Object? clientSecret = null,
    Object? redirectUri = null,
    Object? grantType = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      grantType: freezed == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExchangeGoogleCodeRequestImplCopyWith<$Res>
    implements $ExchangeGoogleCodeRequestCopyWith<$Res> {
  factory _$$ExchangeGoogleCodeRequestImplCopyWith(
          _$ExchangeGoogleCodeRequestImpl value,
          $Res Function(_$ExchangeGoogleCodeRequestImpl) then) =
      __$$ExchangeGoogleCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') String code,
      @JsonKey(name: 'client_id') String clientId,
      @JsonKey(name: 'client_secret') String clientSecret,
      @JsonKey(name: 'redirect_uri') String redirectUri,
      @JsonKey(name: 'grant_type', defaultValue: 'authorization_code')
      String? grantType});
}

/// @nodoc
class __$$ExchangeGoogleCodeRequestImplCopyWithImpl<$Res>
    extends _$ExchangeGoogleCodeRequestCopyWithImpl<$Res,
        _$ExchangeGoogleCodeRequestImpl>
    implements _$$ExchangeGoogleCodeRequestImplCopyWith<$Res> {
  __$$ExchangeGoogleCodeRequestImplCopyWithImpl(
      _$ExchangeGoogleCodeRequestImpl _value,
      $Res Function(_$ExchangeGoogleCodeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? clientId = null,
    Object? clientSecret = null,
    Object? redirectUri = null,
    Object? grantType = freezed,
  }) {
    return _then(_$ExchangeGoogleCodeRequestImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      redirectUri: null == redirectUri
          ? _value.redirectUri
          : redirectUri // ignore: cast_nullable_to_non_nullable
              as String,
      grantType: freezed == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExchangeGoogleCodeRequestImpl implements _ExchangeGoogleCodeRequest {
  _$ExchangeGoogleCodeRequestImpl(
      {@JsonKey(name: 'code') required this.code,
      @JsonKey(name: 'client_id') required this.clientId,
      @JsonKey(name: 'client_secret') required this.clientSecret,
      @JsonKey(name: 'redirect_uri') required this.redirectUri,
      @JsonKey(name: 'grant_type', defaultValue: 'authorization_code')
      this.grantType});

  factory _$ExchangeGoogleCodeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeGoogleCodeRequestImplFromJson(json);

  @override
  @JsonKey(name: 'code')
  final String code;
  @override
  @JsonKey(name: 'client_id')
  final String clientId;
  @override
  @JsonKey(name: 'client_secret')
  final String clientSecret;
  @override
  @JsonKey(name: 'redirect_uri')
  final String redirectUri;
  @override
  @JsonKey(name: 'grant_type', defaultValue: 'authorization_code')
  final String? grantType;

  @override
  String toString() {
    return 'ExchangeGoogleCodeRequest(code: $code, clientId: $clientId, clientSecret: $clientSecret, redirectUri: $redirectUri, grantType: $grantType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeGoogleCodeRequestImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.redirectUri, redirectUri) ||
                other.redirectUri == redirectUri) &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, clientId, clientSecret, redirectUri, grantType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeGoogleCodeRequestImplCopyWith<_$ExchangeGoogleCodeRequestImpl>
      get copyWith => __$$ExchangeGoogleCodeRequestImplCopyWithImpl<
          _$ExchangeGoogleCodeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeGoogleCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _ExchangeGoogleCodeRequest implements ExchangeGoogleCodeRequest {
  factory _ExchangeGoogleCodeRequest(
      {@JsonKey(name: 'code') required final String code,
      @JsonKey(name: 'client_id') required final String clientId,
      @JsonKey(name: 'client_secret') required final String clientSecret,
      @JsonKey(name: 'redirect_uri') required final String redirectUri,
      @JsonKey(name: 'grant_type', defaultValue: 'authorization_code')
      final String? grantType}) = _$ExchangeGoogleCodeRequestImpl;

  factory _ExchangeGoogleCodeRequest.fromJson(Map<String, dynamic> json) =
      _$ExchangeGoogleCodeRequestImpl.fromJson;

  @override
  @JsonKey(name: 'code')
  String get code;
  @override
  @JsonKey(name: 'client_id')
  String get clientId;
  @override
  @JsonKey(name: 'client_secret')
  String get clientSecret;
  @override
  @JsonKey(name: 'redirect_uri')
  String get redirectUri;
  @override
  @JsonKey(name: 'grant_type', defaultValue: 'authorization_code')
  String? get grantType;
  @override
  @JsonKey(ignore: true)
  _$$ExchangeGoogleCodeRequestImplCopyWith<_$ExchangeGoogleCodeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExchangeGoogleCodeResponse _$ExchangeGoogleCodeResponseFromJson(
    Map<String, dynamic> json) {
  return _ExchangeGoogleCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$ExchangeGoogleCodeResponse {
  @JsonKey(name: 'id_token')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeGoogleCodeResponseCopyWith<ExchangeGoogleCodeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeGoogleCodeResponseCopyWith<$Res> {
  factory $ExchangeGoogleCodeResponseCopyWith(ExchangeGoogleCodeResponse value,
          $Res Function(ExchangeGoogleCodeResponse) then) =
      _$ExchangeGoogleCodeResponseCopyWithImpl<$Res,
          ExchangeGoogleCodeResponse>;
  @useResult
  $Res call({@JsonKey(name: 'id_token') String token});
}

/// @nodoc
class _$ExchangeGoogleCodeResponseCopyWithImpl<$Res,
        $Val extends ExchangeGoogleCodeResponse>
    implements $ExchangeGoogleCodeResponseCopyWith<$Res> {
  _$ExchangeGoogleCodeResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$ExchangeGoogleCodeResponseImplCopyWith<$Res>
    implements $ExchangeGoogleCodeResponseCopyWith<$Res> {
  factory _$$ExchangeGoogleCodeResponseImplCopyWith(
          _$ExchangeGoogleCodeResponseImpl value,
          $Res Function(_$ExchangeGoogleCodeResponseImpl) then) =
      __$$ExchangeGoogleCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id_token') String token});
}

/// @nodoc
class __$$ExchangeGoogleCodeResponseImplCopyWithImpl<$Res>
    extends _$ExchangeGoogleCodeResponseCopyWithImpl<$Res,
        _$ExchangeGoogleCodeResponseImpl>
    implements _$$ExchangeGoogleCodeResponseImplCopyWith<$Res> {
  __$$ExchangeGoogleCodeResponseImplCopyWithImpl(
      _$ExchangeGoogleCodeResponseImpl _value,
      $Res Function(_$ExchangeGoogleCodeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$ExchangeGoogleCodeResponseImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExchangeGoogleCodeResponseImpl implements _ExchangeGoogleCodeResponse {
  _$ExchangeGoogleCodeResponseImpl(
      {@JsonKey(name: 'id_token') required this.token});

  factory _$ExchangeGoogleCodeResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExchangeGoogleCodeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id_token')
  final String token;

  @override
  String toString() {
    return 'ExchangeGoogleCodeResponse(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeGoogleCodeResponseImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeGoogleCodeResponseImplCopyWith<_$ExchangeGoogleCodeResponseImpl>
      get copyWith => __$$ExchangeGoogleCodeResponseImplCopyWithImpl<
          _$ExchangeGoogleCodeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeGoogleCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _ExchangeGoogleCodeResponse
    implements ExchangeGoogleCodeResponse {
  factory _ExchangeGoogleCodeResponse(
          {@JsonKey(name: 'id_token') required final String token}) =
      _$ExchangeGoogleCodeResponseImpl;

  factory _ExchangeGoogleCodeResponse.fromJson(Map<String, dynamic> json) =
      _$ExchangeGoogleCodeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id_token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$ExchangeGoogleCodeResponseImplCopyWith<_$ExchangeGoogleCodeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
