import 'package:bapbi_app/component/authentication/dto/exchange_google_code.dart';
import 'package:bapbi_app/component/authentication/dto/me.dart';
import 'package:bapbi_app/component/authentication/dto/sign_in_with_google.dart';
import 'package:bapbi_app/core/http.dart';
import 'package:dio/dio.dart';

class AuthenticationAPI {
  final String prefix = '/api/auth';
  late AppHttp _http;

  AuthenticationAPI({required AppHttp http}) {
    _http = http;
  }

  Future<SignInWithGoogleResponse> signInWithGoogle(
      SignInWithGoogleRequest req) async {
    final response =
        await _http.post('$prefix/signin-with-google', req.toJson());
    final result = SignInWithGoogleResponse.fromJson(response.data);
    return result;
  }

  Future<MeResponse> me(MeRequest req) async {
    final response = await _http.get('$prefix/me', req.toJson());
    final result = MeResponse.fromJson(response.data);
    return result;
  }

  Future<ExchangeGoogleCodeResponse> exchangeGoogleCode(
      ExchangeGoogleCodeRequest req) async {
    final dio = Dio(
      BaseOptions(
        validateStatus: (s) => s! < 500,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
      ),
    );
    // dio.interceptors.add(
    //   TalkerDioLogger(
    //     settings: TalkerDioLoggerSettings(
    //       printRequestData: true,
    //       printResponseData: true,
    //       requestPen: AnsiPen()..blue(),
    //       responsePen: AnsiPen()..green(),
    //       errorPen: AnsiPen()..red(),
    //     ),
    //   ),
    // );

    final response = await dio.post('https://oauth2.googleapis.com/token',
        data: req.toJson());
    final result = ExchangeGoogleCodeResponse.fromJson(response.data);
    return result;
  }
}
