import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_google_code.freezed.dart';
part 'exchange_google_code.g.dart';

@freezed
class ExchangeGoogleCodeRequest with _$ExchangeGoogleCodeRequest {
  factory ExchangeGoogleCodeRequest({
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'client_id') required String clientId,
    @JsonKey(name: 'client_secret') required String clientSecret,
    @JsonKey(name: 'redirect_uri') required String redirectUri,
    @JsonKey(name: 'grant_type', defaultValue: 'authorization_code')
    String? grantType,
  }) = _ExchangeGoogleCodeRequest;

  factory ExchangeGoogleCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$ExchangeGoogleCodeRequestFromJson(json);
}

@freezed
class ExchangeGoogleCodeResponse with _$ExchangeGoogleCodeResponse {
  factory ExchangeGoogleCodeResponse({
    @JsonKey(name: 'id_token') required String token,
  }) = _ExchangeGoogleCodeResponse;

  factory ExchangeGoogleCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExchangeGoogleCodeResponseFromJson(json);
}
