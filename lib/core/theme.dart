import 'package:bapbi_app/core/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeModeProvider = Provider<ThemeData>(
  (ref) => throw UnimplementedError(),
  dependencies: const [],
);

final themeModeStateProvider = StateNotifierProvider<ThemeModeState, ThemeMode>(
  (ref) => ThemeModeState(ref),
);

class ThemeModeState extends StateNotifier<ThemeMode> {
  final Ref ref;

  ThemeModeState(this.ref) : super(ThemeMode.dark) {
    _initialize();
  }

  void _initialize() {
    final mode = ref.read(appStorageProvider.notifier).getThemeMode();
    state = _getThemeModeFromStorage(mode);
  }

  ThemeMode _getThemeModeFromStorage(String? themeString) {
    switch (themeString) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.dark;
    }
  }

  void toggleThemeMode() async {
    final newThemeMode =
        state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    state = newThemeMode;
    await ref.read(appStorageProvider.notifier).setThemeMode(state.name);
  }
}
