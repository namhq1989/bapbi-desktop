import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'storage.g.dart';

@Riverpod(keepAlive: true)
class AppStorage extends _$AppStorage {
  late _AppStorageService _svc;

  @override
  Future<void> build() async {
    final sp = await SharedPreferences.getInstance();
    _svc = _AppStorageService(sp: sp);
  }

  // THEME

  String getThemeMode() {
    return _svc.getThemeMode();
  }

  Future<void> setThemeMode(String value) async {
    await _svc.setThemeMode(value);
  }

  // TOKENS

  String getAccessToken() {
    return _svc.getAccessToken();
  }

  Future<void> setAccessToken(String value) async {
    await _svc.setAccessToken(value);
  }

  String getRefreshToken() {
    return _svc.getRefreshToken();
  }

  Future<void> setRefreshToken(String value) async {
    await _svc.setRefreshToken(value);
  }

  Future<void> deleteTokens() async {
    await _svc.deleteTokens();
  }
}

class _AppStorageService {
  late SharedPreferences _sp;

  _AppStorageService({required SharedPreferences sp}) {
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
