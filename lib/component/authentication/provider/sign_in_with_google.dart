import 'dart:async';
import 'dart:io';

import 'package:bapbi_app/component/authentication/api/api.dart';
import 'package:bapbi_app/component/authentication/dto/exchange_google_code.dart';
import 'package:bapbi_app/component/authentication/dto/sign_in_with_google.dart';
import 'package:bapbi_app/component/authentication/provider/authentication.dart';
import 'package:bapbi_app/core/config.dart';
import 'package:bapbi_app/core/http.dart';
import 'package:bapbi_app/utility/error.dart';
import 'package:bapbi_app/utility/launch_url.dart';
import 'package:bapbi_app/utility/logger.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_with_google.g.dart';

@riverpod
class SignInWithGoogle extends _$SignInWithGoogle {
  late _SignInWithGoogleService _svc;
  final Completer<void> _readyCompleter = Completer<void>();

  @override
  Future<void> build() async {
    final config = await ref.watch(appConfigProvider.future);
    final http = ref.watch(appHttpProvider.notifier);
    final api = AuthenticationAPI(http: http);

    _svc = _SignInWithGoogleService(api: api, config: config);
    _readyCompleter.complete();
  }

  Future<AppError?> signInWithGoogle() async {
    await _readyCompleter.future;

    // get auth code
    final googleData = await _svc.launchSignInGoogleUrl();
    if (googleData.isEmpty) {
      return AppError.common('Cannot fetch Google\'s data', '');
    }

    // exchange code for token
    final exchangedResult = await _svc.exchangeGoogleCode(
        googleData['authCode']!, googleData['redirectUri']!);
    if (exchangedResult.isLeft) {
      return exchangedResult.left;
    }

    // sign in with google
    final signInResult = await _svc.signInWithGoogle(exchangedResult.right);
    if (signInResult.isRight) {
      await ref.read(authenticationProvider.notifier).signInSuccessfully(
          signInResult.right.accessToken!, signInResult.right.refreshToken!);
    } else {
      return signInResult.left;
    }

    return null;
  }
}

class _SignInWithGoogleService {
  late AppConfigState _config;

  late AuthenticationAPI _api;
  late AppLogger _logger;

  _SignInWithGoogleService({
    required AuthenticationAPI api,
    required AppConfigState config,
  }) {
    _config = config;
    _api = api;
    _logger = AppLogger(prefix: 'Google Sign In');
  }

  Future<Either<AppError, SignInWithGoogleResponseData>> signInWithGoogle(
      String token) async {
    try {
      final req = SignInWithGoogleRequest(token: token);
      final result = await _api.signInWithGoogle(req);
      if (result.success!) {
        return Right(result.data!);
      }

      return Left(AppError.apiFailed(result.message, result.code));
    } on PlatformException catch (err) {
      _logger.error(
          'sign in with Google on PlatformException error: ${err.message}');
      return Left(AppError.apiFailed(err.message, ''));
    } catch (err) {
      _logger.error('sign in with Google error: ${err.toString()}');
      return Left(AppError.apiFailed(err.toString(), ''));
    }
  }

  Future<Map<String, String>> launchSignInGoogleUrl() async {
    final port = await getUnusedPort();
    final redirectUri = 'http://localhost:$port';
    final scope = Uri.encodeComponent('email profile');
    final authUrl =
        'https://accounts.google.com/o/oauth2/v2/auth?client_id=${_config.googleClientId}&redirect_uri=$redirectUri&response_type=code&scope=$scope&access_type=offline&prompt=select_account';
    await launchUrl(authUrl);

    final authCode = await startLocalServerForGoogleCode(port);
    return {
      'authCode': authCode,
      'redirectUri': redirectUri,
    };
  }

  Future<String> startLocalServerForGoogleCode(int port) async {
    final completer = Completer<String>();
    final server = await HttpServer.bind(InternetAddress.loopbackIPv4, port);

    server.listen((HttpRequest request) async {
      final code = request.uri.queryParameters['code'];
      if (code != null) {
        completer.complete(code);
        request.response
          ..headers.contentType = ContentType.html
          ..write(
              '<html><body><p>You can now close this window.</p></body></html>')
          ..close();
        await server.close();
      }
    });

    return completer.future;
  }

  Future<Either<AppError, String>> exchangeGoogleCode(
      String code, String redirectUri) async {
    try {
      final req = ExchangeGoogleCodeRequest(
        code: code,
        clientId: _config.googleClientId,
        clientSecret: _config.googleClientSecret,
        redirectUri: redirectUri,
        grantType: 'authorization_code',
      );
      final result = await _api.exchangeGoogleCode(req);
      return Right(result.token);
    } on PlatformException catch (err) {
      _logger.error(
          'exchange Google code on PlatformException error: ${err.message}');
      return Left(AppError.common(err.toString(), ''));
    } catch (err) {
      _logger.error('exchange Google code error: ${err.toString()}');
      return Left(AppError.common(err.toString(), ''));
    }
  }
}
