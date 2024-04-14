// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_google_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeGoogleCodeRequestImpl _$$ExchangeGoogleCodeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ExchangeGoogleCodeRequestImpl(
      code: json['code'] as String,
      clientId: json['client_id'] as String,
      clientSecret: json['client_secret'] as String,
      redirectUri: json['redirect_uri'] as String,
      grantType: json['grant_type'] as String? ?? 'authorization_code',
    );

Map<String, dynamic> _$$ExchangeGoogleCodeRequestImplToJson(
        _$ExchangeGoogleCodeRequestImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
      'redirect_uri': instance.redirectUri,
      'grant_type': instance.grantType,
    };

_$ExchangeGoogleCodeResponseImpl _$$ExchangeGoogleCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ExchangeGoogleCodeResponseImpl(
      token: json['id_token'] as String,
    );

Map<String, dynamic> _$$ExchangeGoogleCodeResponseImplToJson(
        _$ExchangeGoogleCodeResponseImpl instance) =>
    <String, dynamic>{
      'id_token': instance.token,
    };
