class SingInResponse {
  final String accessToken;
  final String refreshToken;

  SingInResponse({
    required this.accessToken,
    required this.refreshToken,
  });

  static empty() => SingInResponse(
        accessToken: '',
        refreshToken: '',
      );
}
