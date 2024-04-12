import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'config.freezed.dart';
part 'config.g.dart';

@freezed
class ConfigState with _$ConfigState {
  factory ConfigState({
    required String apiEndpoint,
    required String googleClientId,
    required String googleClientSecret,
  }) = _ConfigState;
}

@Riverpod(keepAlive: true)
class Config extends _$Config {
  @override
  Future<ConfigState> build() async {
    await dotenv.load(fileName: 'assets/env/.env');

    var cfg = ConfigState(
      apiEndpoint: dotenv.env['API_ENDPOINT']!,
      googleClientId: dotenv.env['GOOGLE_CLIENT_ID']!,
      googleClientSecret: dotenv.env['GOOGLE_CLIENT_SECRET']!,
    );

    return cfg;
  }
}
