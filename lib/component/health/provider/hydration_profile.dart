import 'package:bapbi_app/component/health/api/api.dart';
import 'package:bapbi_app/component/health/dto/hydration_profile.dart';
import 'package:bapbi_app/core/http.dart';
import 'package:bapbi_app/core/notification.dart';
import 'package:bapbi_app/utility/error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hydration_profile.g.dart';

@riverpod
class HydrationProfile extends _$HydrationProfile {
  @override
  void build() {}

  Future<AppError?> enalbe() async {
    final http = ref.watch(appHttpProvider.notifier);
    final api = HealthAPI(http: http);

    final req = HydrationEnableProfileRequest();
    final result = await api.hydrationEnableProfile(req);
    if (!result.success!) {
      print('message ${result.message}');
      ref
          .read(notificationManagerProvider.notifier)
          .addNotification(result.message!);
      return AppError.apiFailed(result.message, result.code);
    }

    return null;
  }

  Future<AppError?> disable() async {
    final http = ref.watch(appHttpProvider.notifier);
    final api = HealthAPI(http: http);

    final req = HydrationDisableProfileRequest();
    final result = await api.hydrationDisableProfile(req);
    if (!result.success!) {
      return AppError.apiFailed(result.message, result.code);
    }

    return null;
  }
}
