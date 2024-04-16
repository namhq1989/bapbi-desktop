import 'package:auto_route/auto_route.dart';
import 'package:bapbi_app/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final navKey = GlobalKey<NavigatorState>();
final router = AppRouter(navigatorKey: navKey);

@riverpod
// ignore: unsupported_provider_value
AppRouter appRouter(AppRouterRef ref) => router;

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  AppRouter({
    super.navigatorKey,
  });

  final bool isAuthenticated = true;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LayoutRoute.page, initial: true),
        AutoRoute(page: SignInRoute.page),
      ];
}
