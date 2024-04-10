import 'package:bapbi_app/router.dart';
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
    // appWindow.minSize = initialSize;
    appWindow.title = 'Bapbi App';
    appWindow.show();
  });
}

// final themeModeProvider = StateProvider((ref) => ThemeMode.dark);
final themeModeProvider = Provider<ThemeData>(
  (ref) => throw UnimplementedError(),
  dependencies: const [],
);

final themeModeStateProvider =
    AutoDisposeNotifierProvider<ThemeModeState, ThemeMode>(
  ThemeModeState.new,
);

class ThemeModeState extends AutoDisposeNotifier<ThemeMode> {
  @override
  ThemeMode build() => ThemeMode.dark;

  void toggleThemeMode() {
    if (state == ThemeMode.dark) {
      state = ThemeMode.light;
    } else {
      state = ThemeMode.dark;
    }
  }
}

final approuter = AppRouter();

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
      builder: (context, child) {
        final theme = Theme.of(context);
        return ProviderScope(
          overrides: [themeModeProvider.overrideWithValue(theme)],
          child: child!,
        );
      },
      routerConfig: approuter.config(),
    );
  }
}
