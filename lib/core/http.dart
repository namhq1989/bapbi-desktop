import 'package:bapbi_app/core/config.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http.freezed.dart';
part 'http.g.dart';

@freezed
class HttpState with _$HttpState {
  factory HttpState({
    required ConfigState config,
    required Dio dio,
  }) = _HttpState;
}

@Riverpod(keepAlive: true)
class Http extends _$Http {
  @override
  Future<HttpState> build() async {
    final cfg = await ref.watch(configProvider.future);
    final dio = Dio(
      BaseOptions(
        baseUrl: cfg.apiEndpoint,
        connectTimeout: const Duration(seconds: 10),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    return HttpState(
      config: cfg,
      dio: dio,
    );
  }
}
