// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_with_google.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInWithGoogleRequestImpl _$$SignInWithGoogleRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInWithGoogleRequestImpl(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$SignInWithGoogleRequestImplToJson(
        _$SignInWithGoogleRequestImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

_$SignInWithGoogleResponseImpl _$$SignInWithGoogleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInWithGoogleResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      code: json['code'] as String?,
      data: json['data'] == null
          ? null
          : SignInWithGoogleResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignInWithGoogleResponseImplToJson(
        _$SignInWithGoogleResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$SignInWithGoogleResponseDataImpl _$$SignInWithGoogleResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInWithGoogleResponseDataImpl(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$SignInWithGoogleResponseDataImplToJson(
        _$SignInWithGoogleResponseDataImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
