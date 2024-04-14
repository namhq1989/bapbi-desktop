import 'package:freezed_annotation/freezed_annotation.dart';

part 'me.freezed.dart';
part 'me.g.dart';

@freezed
class MeRequest with _$MeRequest {
  factory MeRequest() = _MeRequest;

  factory MeRequest.fromJson(Map<String, dynamic> json) =>
      _$MeRequestFromJson(json);
}

@freezed
class MeResponse with _$MeResponse {
  factory MeResponse({
    bool? success,
    String? message,
    String? code,
    MeResponseData? data,
  }) = _MeResponse;

  factory MeResponse.fromJson(Map<String, dynamic> json) =>
      _$MeResponseFromJson(json);
}

@freezed
class MeResponseData with _$MeResponseData {
  factory MeResponseData({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
  }) = _MeResponseData;

  factory MeResponseData.fromJson(Map<String, dynamic> json) =>
      _$MeResponseDataFromJson(json);
}
