import 'package:auto_route/auto_route.dart';
import 'package:bapbi_app/component/layout/system/auth_provider.dart';
import 'package:bapbi_app/component/layout/system/theme_provider.dart';
import 'package:bapbi_app/router.dart';
import 'package:bapbi_app/router.gr.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));

  doWhenWindowReady(() {
    const initialSize = Size(1400, 800);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.minSize = const Size(800, 800);
    appWindow.title = 'Bapbi App';
    appWindow.show();
  });
}

final appRouter = AppRouter();
final appRouterProvider = Provider<AppRouter>((ref) => appRouter);

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  double _contentOpacity = 0.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    // First, fade out the loading indicator
    _animationController.forward().then((_) {
      setState(() {
        _contentOpacity = 1.0;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authStateProvider);

    // watch auth
    ref.listen<AsyncValue<bool>>(authStateProvider, (_, state) {
      state.whenData((isAuthenticated) {
        if (isAuthenticated) {
          appRouter.replace(const HomeRoute());
        } else {
          appRouter.replace(const LoginRoute());
        }
      });
    });

    final themeMode = ref.watch(themeModeStateProvider);

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
      themeMode: themeMode,
      builder: (context, router) {
        return Stack(
          children: [
            AnimatedOpacity(
              opacity: _contentOpacity,
              duration: const Duration(seconds: 1),
              child: authState.when(
                data: (_) {
                  final theme = Theme.of(context);
                  return ProviderScope(
                    overrides: [themeModeProvider.overrideWithValue(theme)],
                    child: router!,
                  );
                },
                loading: () => const Scaffold(
                  body: Center(child: CircularProgressIndicator()),
                ),
                error: (error, _) => Scaffold(
                  body: Center(child: Text('Error: $error')),
                ),
              ),
            ),
            FadeTransition(
              opacity:
                  _animationController.drive(CurveTween(curve: Curves.easeOut)),
              child: authState.when(
                data: (_) =>
                    Container(), // Once data is loaded, hide the indicator
                loading: () => const Scaffold(
                  body: Center(child: CircularProgressIndicator()),
                ),
                error: (error, _) => Container(), // Hide on error as well
              ),
            ),
          ],
        );
      },
      routerDelegate: AutoRouterDelegate(appRouter),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
