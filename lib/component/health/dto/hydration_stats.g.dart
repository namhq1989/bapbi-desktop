// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hydration_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HydrationStatsRequestImpl _$$HydrationStatsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$HydrationStatsRequestImpl();

Map<String, dynamic> _$$HydrationStatsRequestImplToJson(
        _$HydrationStatsRequestImpl instance) =>
    <String, dynamic>{};

_$HydrationStatsResponseImpl _$$HydrationStatsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HydrationStatsResponseImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      code: json['code'] as String?,
      data: json['data'] == null
          ? null
          : HydrationStatsResponseData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HydrationStatsResponseImplToJson(
        _$HydrationStatsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

_$HydrationStatsResponseDataImpl _$$HydrationStatsResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HydrationStatsResponseDataImpl(
      todayIntakes: (json['todayIntakes'] as List<dynamic>?)
          ?.map((e) =>
              HydrationStatsTodayIntakeData.fromJson(e as Map<String, dynamic>))
          .toList(),
      todayProgress: json['todayProgress'] == null
          ? null
          : HydrationStatsTodayProgress.fromJson(
              json['todayProgress'] as Map<String, dynamic>),
      longestStreakValue: json['longestStreakValue'] as int?,
      longestStreakAt:
          const TimestampSerializer().fromJson(json['longestStreakAt']),
      highestIntakeAmountValue: json['highestIntakeAmountValue'] as int?,
      highestIntakeAmountAt:
          const TimestampSerializer().fromJson(json['highestIntakeAmountAt']),
    );

Map<String, dynamic> _$$HydrationStatsResponseDataImplToJson(
        _$HydrationStatsResponseDataImpl instance) =>
    <String, dynamic>{
      'todayIntakes': instance.todayIntakes,
      'todayProgress': instance.todayProgress,
      'longestStreakValue': instance.longestStreakValue,
      'longestStreakAt': _$JsonConverterToJson<dynamic, DateTime>(
          instance.longestStreakAt, const TimestampSerializer().toJson),
      'highestIntakeAmountValue': instance.highestIntakeAmountValue,
      'highestIntakeAmountAt': _$JsonConverterToJson<dynamic, DateTime>(
          instance.highestIntakeAmountAt, const TimestampSerializer().toJson),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$HydrationStatsTodayIntakeDataImpl
    _$$HydrationStatsTodayIntakeDataImplFromJson(Map<String, dynamic> json) =>
        _$HydrationStatsTodayIntakeDataImpl(
          amount: json['amount'] as int?,
          intakeAt: const TimestampSerializer().fromJson(json['intakeAt']),
          createdAt: const TimestampSerializer().fromJson(json['createdAt']),
        );

Map<String, dynamic> _$$HydrationStatsTodayIntakeDataImplToJson(
        _$HydrationStatsTodayIntakeDataImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'intakeAt': _$JsonConverterToJson<dynamic, DateTime>(
          instance.intakeAt, const TimestampSerializer().toJson),
      'createdAt': _$JsonConverterToJson<dynamic, DateTime>(
          instance.createdAt, const TimestampSerializer().toJson),
    };

_$HydrationStatsTodayProgressImpl _$$HydrationStatsTodayProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$HydrationStatsTodayProgressImpl(
      goal: json['goal'] as int?,
      completed: json['completed'] as int?,
      isAchieved: json['isAchieved'] as bool?,
    );

Map<String, dynamic> _$$HydrationStatsTodayProgressImplToJson(
        _$HydrationStatsTodayProgressImpl instance) =>
    <String, dynamic>{
      'goal': instance.goal,
      'completed': instance.completed,
      'isAchieved': instance.isAchieved,
    };
