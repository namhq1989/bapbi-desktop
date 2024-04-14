// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hydration_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HydrationEnableProfileRequestImpl
    _$$HydrationEnableProfileRequestImplFromJson(Map<String, dynamic> json) =>
        _$HydrationEnableProfileRequestImpl();

Map<String, dynamic> _$$HydrationEnableProfileRequestImplToJson(
        _$HydrationEnableProfileRequestImpl instance) =>
    <String, dynamic>{};

_$HydrationEnableProfileResponseImpl
    _$$HydrationEnableProfileResponseImplFromJson(Map<String, dynamic> json) =>
        _$HydrationEnableProfileResponseImpl(
          success: json['success'] as bool?,
          message: json['message'] as String?,
          code: json['code'] as String?,
          data: json['data'],
        );

Map<String, dynamic> _$$HydrationEnableProfileResponseImplToJson(
        _$HydrationEnableProfileResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$HydrationDisableProfileRequestImpl
    _$$HydrationDisableProfileRequestImplFromJson(Map<String, dynamic> json) =>
        _$HydrationDisableProfileRequestImpl();

Map<String, dynamic> _$$HydrationDisableProfileRequestImplToJson(
        _$HydrationDisableProfileRequestImpl instance) =>
    <String, dynamic>{};

_$HydrationDisableProfileResponseImpl
    _$$HydrationDisableProfileResponseImplFromJson(Map<String, dynamic> json) =>
        _$HydrationDisableProfileResponseImpl(
          success: json['success'] as bool?,
          message: json['message'] as String?,
          code: json['code'] as String?,
          data: json['data'],
        );

Map<String, dynamic> _$$HydrationDisableProfileResponseImplToJson(
        _$HydrationDisableProfileResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };
