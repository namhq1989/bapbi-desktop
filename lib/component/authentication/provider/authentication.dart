import 'dart:async';

import 'package:bapbi_app/component/authentication/api/api.dart';
import 'package:bapbi_app/component/authentication/dto/me.dart';
import 'package:bapbi_app/component/authentication/model/user.dart';
import 'package:bapbi_app/core/http.dart';
import 'package:bapbi_app/core/storage.dart';
import 'package:bapbi_app/utility/error.dart';
import 'package:bapbi_app/utility/logger.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication.freezed.dart';
part 'authentication.g.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState({
    required bool isAuthenticated,
    required Me? me,
  }) = _AuthenticationState;
}

@riverpod
class Authentication extends _$Authentication {
  late _AuthenticationService _svc;

  @override
  Future<AuthenticationState> build() async {
    final storage = ref.watch(appStorageProvider.notifier);
    final http = ref.watch(appHttpProvider.notifier);
    final api = AuthenticationAPI(http: http);

    _svc = _AuthenticationService(api: api, storage: storage);

    // get token
    final accessToken = storage.getAccessToken();
    if (accessToken.isEmpty) {
      return AuthenticationState(
        isAuthenticated: false,
        me: null,
      );
    }

    // find me
    final getMeResult = await _svc.me();
    if (getMeResult.isLeft) {
      await _svc.signOut();
      return AuthenticationState(
        isAuthenticated: false,
        me: null,
      );
    }

    return AuthenticationState(
      isAuthenticated: true,
      me: getMeResult.right,
    );
  }

  Future<void> signInWithFacebook() async {
    await _svc.signInWithFacebook();

    await update((data) async {
      return data.copyWith(isAuthenticated: true);
    });
  }

  Future<void> signInSuccessfully(
      String accessToken, String refreshToken) async {
    // set tokens
    await _svc.persistTokens(accessToken, refreshToken);

    // set http token
    ref.read(appHttpProvider.notifier).setAccessToken(accessToken);

    // get me
    final getMeResult = await _svc.me();
    if (getMeResult.isLeft) {
      await _svc.signOut();
      await update((data) async {
        return data.copyWith(isAuthenticated: false, me: null);
      });
    } else {
      await update((data) async {
        return data.copyWith(isAuthenticated: true, me: getMeResult.right);
      });
    }
  }

  Future<void> signOut() async {
    await _svc.signOut();

    await update((data) async {
      return data.copyWith(isAuthenticated: false);
    });
  }
}

class _AuthenticationService {
  late AppStorage _storage;
  late AppLogger _logger;
  late AuthenticationAPI _api;

  _AuthenticationService({
    required AuthenticationAPI api,
    required AppStorage storage,
  }) {
    _api = api;
    _storage = storage;
    _logger = AppLogger(prefix: 'Authentication');
  }

  Future<void> persistTokens(String accessToken, String refreshToken) async {
    await _storage.setAccessToken(accessToken);
    await _storage.setRefreshToken(refreshToken);
  }

  Future<void> signOut() async {
    await _storage.deleteTokens();
  }

  Future<bool> signInWithFacebook() async {
    // TODO: NOT IMPLEMENTED YET

    await _storage.setAccessToken('access token');
    await _storage.setRefreshToken('refresh token');

    return true;
  }

  Future<Either<AppError, Me>> me() async {
    final req = MeRequest();
    final result = await _api.me(req);
    if (!result.success!) {
      _logger.error('get me error: ${result.message}');
      return Left(AppError.apiFailed(result.message, result.code));
    }

    MeResponseData user = result.data!;
    return Right(
      Me(
        id: user.id!,
        name: user.name!,
      ),
    );
  }
}
