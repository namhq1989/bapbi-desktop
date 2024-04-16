import 'package:bapbi_app/extension/datetime.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hydration_stats.freezed.dart';
part 'hydration_stats.g.dart';

@freezed
class HydrationStatsRequest with _$HydrationStatsRequest {
  factory HydrationStatsRequest() = _HydrationStatsRequest;

  factory HydrationStatsRequest.fromJson(Map<String, dynamic> json) =>
      _$HydrationStatsRequestFromJson(json);
}

@freezed
class HydrationStatsResponse with _$HydrationStatsResponse {
  factory HydrationStatsResponse({
    bool? success,
    String? message,
    String? code,
    HydrationStatsResponseData? data,
  }) = _HydrationStatsResponse;

  factory HydrationStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$HydrationStatsResponseFromJson(json);
}

@freezed
class HydrationStatsResponseData with _$HydrationStatsResponseData {
  factory HydrationStatsResponseData({
    @JsonKey(name: 'todayIntakes')
    List<HydrationStatsTodayIntakeData>? todayIntakes,
    @JsonKey(name: 'todayProgress') HydrationStatsTodayProgress? todayProgress,
    @JsonKey(name: 'longestStreakValue') int? longestStreakValue,
    @TimestampSerializer()
    @JsonKey(name: 'longestStreakAt')
    DateTime? longestStreakAt,
    @JsonKey(name: 'highestIntakeAmountValue') int? highestIntakeAmountValue,
    @TimestampSerializer()
    @JsonKey(name: 'highestIntakeAmountAt')
    DateTime? highestIntakeAmountAt,
  }) = _HydrationStatsResponseData;

  factory HydrationStatsResponseData.fromJson(Map<String, dynamic> json) =>
      _$HydrationStatsResponseDataFromJson(json);
}

@freezed
class HydrationStatsTodayIntakeData with _$HydrationStatsTodayIntakeData {
  factory HydrationStatsTodayIntakeData({
    @JsonKey(name: 'amount') int? amount,
    @TimestampSerializer() @JsonKey(name: 'intakeAt') DateTime? intakeAt,
    @TimestampSerializer() @JsonKey(name: 'createdAt') DateTime? createdAt,
  }) = _HydrationStatsTodayIntakeData;

  factory HydrationStatsTodayIntakeData.fromJson(Map<String, dynamic> json) =>
      _$HydrationStatsTodayIntakeDataFromJson(json);
}

@freezed
class HydrationStatsTodayProgress with _$HydrationStatsTodayProgress {
  factory HydrationStatsTodayProgress({
    @JsonKey(name: 'goal') int? goal,
    @JsonKey(name: 'completed') int? completed,
    @JsonKey(name: 'isAchieved') bool? isAchieved,
  }) = _HydrationStatsTodayProgress;

  factory HydrationStatsTodayProgress.fromJson(Map<String, dynamic> json) =>
      _$HydrationStatsTodayProgressFromJson(json);
}
