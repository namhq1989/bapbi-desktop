import 'package:bapbi_app/component/health/dto/hydration_profile.dart';
import 'package:bapbi_app/component/health/dto/hydration_stats.dart';
import 'package:bapbi_app/core/http.dart';

class HealthAPI {
  final String prefix = '/api/health';
  late AppHttp _http;

  HealthAPI({required AppHttp http}) {
    _http = http;
  }

  Future<HydrationStatsResponse> hydrationStats(
      HydrationStatsRequest req) async {
    final response = await _http.get('$prefix/hydration/stats', req.toJson());
    final result = HydrationStatsResponse.fromJson(response.data);
    return result;
  }

  Future<HydrationEnableProfileResponse> hydrationEnableProfile(
      HydrationEnableProfileRequest req) async {
    final response =
        await _http.patch('$prefix/hydration/enable-profile', req.toJson());
    final result = HydrationEnableProfileResponse.fromJson(response.data);
    return result;
  }

  Future<HydrationDisableProfileResponse> hydrationDisableProfile(
      HydrationDisableProfileRequest req) async {
    final response =
        await _http.patch('$prefix/hydration/disable-profile', req.toJson());
    final result = HydrationDisableProfileResponse.fromJson(response.data);
    return result;
  }
}
