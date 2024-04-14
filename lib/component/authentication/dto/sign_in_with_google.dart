import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_with_google.freezed.dart';
part 'sign_in_with_google.g.dart';

@freezed
class SignInWithGoogleRequest with _$SignInWithGoogleRequest {
  factory SignInWithGoogleRequest({
    @JsonKey(name: 'token') required String token,
  }) = _SignInWithGoogleRequest;

  factory SignInWithGoogleRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInWithGoogleRequestFromJson(json);
}

@freezed
class SignInWithGoogleResponse with _$SignInWithGoogleResponse {
  factory SignInWithGoogleResponse({
    bool? success,
    String? message,
    String? code,
    SignInWithGoogleResponseData? data,
  }) = _SignInWithGoogleResponse;

  factory SignInWithGoogleResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInWithGoogleResponseFromJson(json);
}

@freezed
class SignInWithGoogleResponseData with _$SignInWithGoogleResponseData {
  factory SignInWithGoogleResponseData({
    @JsonKey(name: 'accessToken') String? accessToken,
    @JsonKey(name: 'refreshToken') String? refreshToken,
  }) = _SignInWithGoogleResponseData;

  factory SignInWithGoogleResponseData.fromJson(Map<String, dynamic> json) =>
      _$SignInWithGoogleResponseDataFromJson(json);
}
