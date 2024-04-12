import 'package:auto_route/auto_route.dart';
import 'package:bapbi_app/component/layout/system/auth_provider.dart';
import 'package:bapbi_app/core/theme.dart';
import 'package:bapbi_app/router.dart';
import 'package:bapbi_app/router.gr.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authStateProvider);

    // watch auth
    ref.listen<AsyncValue<bool>>(authStateProvider, (_, state) {
      state.whenData((isAuthenticated) {
        if (isAuthenticated) {
          router.replace(const HomeRoute());
        } else {
          router.replace(const LoginRoute());
        }
      });
    });

    final theme = ref.watch(themeProvider.notifier);

    return MaterialApp.router(
      title: 'BapBi',
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        scheme: FlexScheme.indigoM3,
        fontFamily: 'Poppins',
        splashFactory: NoSplash.splashFactory,
        subThemesData: const FlexSubThemesData(
          interactionEffects: false,
        ),
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.indigoM3,
        fontFamily: 'Poppins',
        splashFactory: NoSplash.splashFactory,
        subThemesData: const FlexSubThemesData(
          interactionEffects: false,
        ),
      ),
      themeMode: theme.mode(),
      builder: (context, r) {
        return authState.when(
          data: (_) => r!,
          // data: (_) {
          //   final theme = Theme.of(context);
          //   return ProviderScope(
          //     overrides: [themeProvider.overrideWith(() => null)],
          //     child: r!,
          //   );
          // },
          loading: () => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
          error: (error, _) => Scaffold(
            body: Center(child: Text('Error: $error')),
          ),
        );
      },
      routerConfig: router.config(),
    );
  }
}
