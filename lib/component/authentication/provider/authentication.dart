import 'dart:async';

import 'package:bapbi_app/component/authentication/api/api.dart';
import 'package:bapbi_app/core/http.dart';
import 'package:bapbi_app/core/storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication.freezed.dart';
part 'authentication.g.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  factory AuthenticationState({
    required bool isAuthenticated,
  }) = _AuthenticationState;
}

@riverpod
class Authentication extends _$Authentication {
  late AuthenticationService _svc;

  @override
  Future<AuthenticationState> build() async {
    final storage = await ref.watch(appStorageProvider.future);
    final http = await ref.watch(appHttpProvider.future);
    final api = AuthenticationAPI(http: http);

    _svc = AuthenticationService(api: api, storage: storage);

    // get token
    final accessToken = storage.svc.getAccessToken();
    return AuthenticationState(
      isAuthenticated: accessToken.isNotEmpty,
    );
  }

  Future<void> signInWithFacebook() async {
    await _svc.signInWithFacebook();

    await update((data) async {
      return data.copyWith(isAuthenticated: true);
    });
  }

  Future<void> signOut() async {
    await _svc.signOut();

    await update((data) async {
      return data.copyWith(isAuthenticated: false);
    });
  }
}

class AuthenticationService {
  late AppStorageState _storage;

  // late AppLogger _logger;

  AuthenticationService({
    required AuthenticationAPI api,
    required AppStorageState storage,
  }) {
    _storage = storage;
    // _logger = AppLogger(prefix: 'Authentication');
  }

  Future<void> signOut() async {
    await _storage.svc.deleteTokens();
  }

  Future<bool> signInWithFacebook() async {
    // TODO: NOT IMPLEMENTED YET

    await _storage.svc.setAccessToken('access token');
    await _storage.svc.setRefreshToken('refresh token');

    return true;
  }
}
