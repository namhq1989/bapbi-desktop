import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
