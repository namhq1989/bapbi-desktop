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
      longestStreakAt: json['longestStreakAt'] == null
          ? null
          : DateTime.parse(json['longestStreakAt'] as String),
      highestIntakeAmountValue: json['highestIntakeAmountValue'] as int?,
      highestIntakeAmountAt: json['highestIntakeAmountAt'] == null
          ? null
          : DateTime.parse(json['highestIntakeAmountAt'] as String),
    );

Map<String, dynamic> _$$HydrationStatsResponseDataImplToJson(
        _$HydrationStatsResponseDataImpl instance) =>
    <String, dynamic>{
      'todayIntakes': instance.todayIntakes,
      'todayProgress': instance.todayProgress,
      'longestStreakValue': instance.longestStreakValue,
      'longestStreakAt': instance.longestStreakAt?.toIso8601String(),
      'highestIntakeAmountValue': instance.highestIntakeAmountValue,
      'highestIntakeAmountAt':
          instance.highestIntakeAmountAt?.toIso8601String(),
    };

_$HydrationStatsTodayIntakeDataImpl
    _$$HydrationStatsTodayIntakeDataImplFromJson(Map<String, dynamic> json) =>
        _$HydrationStatsTodayIntakeDataImpl(
          amount: json['amount'] as String?,
          intakeAt: json['intakeAt'] == null
              ? null
              : DateTime.parse(json['intakeAt'] as String),
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
        );

Map<String, dynamic> _$$HydrationStatsTodayIntakeDataImplToJson(
        _$HydrationStatsTodayIntakeDataImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'intakeAt': instance.intakeAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$HydrationStatsTodayProgressImpl _$$HydrationStatsTodayProgressImplFromJson(
        Map<String, dynamic> json) =>
    _$HydrationStatsTodayProgressImpl(
      goal: json['goal'] as String?,
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
