import 'package:bapbi_app/core/config.dart';
import 'package:bapbi_app/core/storage.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

part 'http.g.dart';

@Riverpod(keepAlive: true)
class AppHttp extends _$AppHttp {
  late _AppHttpService _svc;

  @override
  Future<void> build() async {
    final config = await ref.watch(appConfigProvider.future);
    final accessToken = ref.watch(appStorageProvider.notifier).getAccessToken();
    _svc = _AppHttpService(config: config, accessToken: accessToken);
  }

  void setAccessToken(String accessToken) {
    _svc.setAccessToken(accessToken);
  }

  Future<Response> get(String path, Map<String, dynamic>? query,
      {Map<String, dynamic>? headers}) {
    return _svc.request('GET', path, query, null, headers);
  }

  Future<Response> post(String path, Object? data) {
    return _svc.request('POST', path, null, data, null);
  }

  Future<Response> put(String path, Object? data) {
    return _svc.request('PUT', path, null, data, null);
  }

  Future<Response> patch(String path, Object? data) {
    return _svc.request('PATCH', path, null, data, null);
  }

  Future<Response> delete(String path, Object? data) {
    return _svc.request('DELETE', path, null, data, null);
  }
}

class _AppHttpService {
  late Dio _dio;
  late String _accessToken;
  late Options _options;

  _AppHttpService(
      {required AppConfigState config, required String accessToken}) {
    _options = Options(
      contentType: Headers.jsonContentType,
      headers: {
        'Content-Type': 'application/json',
      },
    );
    _dio = Dio(
      BaseOptions(
        baseUrl: config.apiEndpoint,
        connectTimeout: const Duration(seconds: 30),
        validateStatus: (s) => s! < 500,
      ),
    );
    _dio.interceptors.add(
      TalkerDioLogger(
        settings: TalkerDioLoggerSettings(
          printRequestData: true,
          printResponseData: true,
          requestPen: AnsiPen()..blue(),
          responsePen: AnsiPen()..green(),
          errorPen: AnsiPen()..red(),
        ),
      ),
    );

    if (accessToken != '') {
      setAccessToken(accessToken);
    }
  }

  void setAccessToken(String accessToken) {
    _accessToken = accessToken;
    _dio.options.headers['Authorization'] = 'Bearer $_accessToken';
  }

  Future<Response> request(
    String method,
    String path,
    Map<String, dynamic>? query,
    Object? data,
    Map<String, dynamic>? headers,
  ) async {
    final opts = _options.copyWith();
    opts.method = method;

    if (headers != null) {
      opts.headers = headers;
    }

    try {
      Response response = await _dio.request(
        path,
        data: data,
        queryParameters: query,
        options: opts,
      );

      // assign flag success
      response.data['success'] =
          response.statusCode! >= 200 && response.statusCode! < 300;

      // return
      return response;
    } on DioException catch (err) {
      return Response(
        requestOptions: err.requestOptions,
        data: <String, dynamic>{
          'code': '',
          'data': null,
          'success': false,
          'message': 'Server error!',
        },
      );
    }
  }
}
