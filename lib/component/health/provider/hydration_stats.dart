import 'package:bapbi_app/component/health/api/api.dart';
import 'package:bapbi_app/component/health/dto/hydration_stats.dart';
import 'package:bapbi_app/core/http.dart';
import 'package:bapbi_app/utility/error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hydration_stats.g.dart';

@riverpod
class HydrationStats extends _$HydrationStats {
  @override
  Future<HydrationStatsResponseData> build() async {
    final http = ref.watch(appHttpProvider.notifier);
    final api = HealthAPI(http: http);

    final req = HydrationStatsRequest();
    final result = await api.hydrationStats(req);
    if (!result.success!) {
      throw AppError.apiFailed(result.message, result.code);
    }

    return result.data!;
  }
}
