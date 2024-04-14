import 'package:freezed_annotation/freezed_annotation.dart';

part 'hydration_profile.freezed.dart';
part 'hydration_profile.g.dart';

@freezed
class HydrationEnableProfileRequest with _$HydrationEnableProfileRequest {
  factory HydrationEnableProfileRequest() = _HydrationEnableProfileRequest;

  factory HydrationEnableProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$HydrationEnableProfileRequestFromJson(json);
}

@freezed
class HydrationEnableProfileResponse with _$HydrationEnableProfileResponse {
  factory HydrationEnableProfileResponse({
    bool? success,
    String? message,
    String? code,
    Object? data,
  }) = _HydrationEnableProfileResponse;

  factory HydrationEnableProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$HydrationEnableProfileResponseFromJson(json);
}

@freezed
class HydrationDisableProfileRequest with _$HydrationDisableProfileRequest {
  factory HydrationDisableProfileRequest() = _HydrationDisableProfileRequest;

  factory HydrationDisableProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$HydrationDisableProfileRequestFromJson(json);
}

@freezed
class HydrationDisableProfileResponse with _$HydrationDisableProfileResponse {
  factory HydrationDisableProfileResponse({
    bool? success,
    String? message,
    String? code,
    Object? data,
  }) = _HydrationDisableProfileResponse;

  factory HydrationDisableProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$HydrationDisableProfileResponseFromJson(json);
}
