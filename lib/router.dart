import 'package:auto_route/auto_route.dart';
import 'package:bapbi_app/router.gr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final router = AppRouter();

@riverpod
// ignore: unsupported_provider_value
AppRouter appRouter(AppRouterRef ref) => router;

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  final bool isAuthenticated = true;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LayoutRoute.page, initial: true, children: [
          AutoRoute(
            page: HomeRoute.page,
            initial: true,
            maintainState: true,
          ),
          AutoRoute(
            page: ProductRoute.page,
            maintainState: true,
          ),
        ]),
        AutoRoute(page: SignInRoute.page),
      ];
}
