import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'storage.g.dart';
part 'storage.freezed.dart';

@freezed
class AppStorageState with _$AppStorageState {
  factory AppStorageState({
    required AppStorageService svc,
  }) = _AppStorageState;
}

@Riverpod(keepAlive: true)
class AppStorage extends _$AppStorage {
  @override
  Future<AppStorageState> build() async {
    final sp = await SharedPreferences.getInstance();
    final svc = AppStorageService(sp: sp);
    return AppStorageState(svc: svc);
  }
}

class AppStorageService {
  late SharedPreferences _sp;

  AppStorageService({required SharedPreferences sp}) {
    _sp = sp;
  }

  // THEME

  String getThemeMode() {
    final value = _sp.getString('theme');
    return value == null ? 'dark' : value.toString();
  }

  Future<void> setThemeMode(String value) async {
    await _sp.setString('theme', value);
  }

  // TOKENS

  String getAccessToken() {
    final value = _sp.getString('access_token');
    return value == null ? '' : value.toString();
  }

  Future<void> setAccessToken(String value) async {
    await _sp.setString('access_token', value);
  }

  String getRefreshToken() {
    final value = _sp.getString('refresh_token');
    return value == null ? '' : value.toString();
  }

  Future<void> setRefreshToken(String value) async {
    await _sp.setString('refresh_token', value);
  }

  Future<void> deleteTokens() async {
    await _sp.remove('access_token');
    await _sp.remove('refresh_token');
  }
}
