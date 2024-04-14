// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeRequestImpl _$$MeRequestImplFromJson(Map<String, dynamic> json) =>
    _$MeRequestImpl();

Map<String, dynamic> _$$MeRequestImplToJson(_$MeRequestImpl instance) =>
    <String, dynamic>{};

_$MeResponseImpl _$$MeResponseImplFromJson(Map<String, dynamic> json) =>
    _$MeResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      code: json['code'] as String?,
      data: json['data'] == null
          ? null
          : MeResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MeResponseImplToJson(_$MeResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$MeResponseDataImpl _$$MeResponseDataImplFromJson(Map<String, dynamic> json) =>
    _$MeResponseDataImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$MeResponseDataImplToJson(
        _$MeResponseDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
