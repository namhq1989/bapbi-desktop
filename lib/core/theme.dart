import 'package:bapbi_app/core/storage.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme.freezed.dart';
part 'theme.g.dart';

@freezed
class ThemeState with _$ThemeState {
  factory ThemeState({
    required SharedPreferences storage,
    required ThemeMode mode,
  }) = _ThemeState;
}

@Riverpod(keepAlive: true)
class Theme extends _$Theme {
  @override
  Future<ThemeState> build() async {
    final storage = await ref.watch(storageProvider.future);

    // get theme from storage
    final s = storage.getString('themeMode');
    final themeMode = s == null
        ? ThemeMode.dark
        : s == 'dark'
            ? ThemeMode.dark
            : ThemeMode.light;
    return ThemeState(
      storage: storage,
      mode: themeMode,
    );
  }

  Future<void> toggleMode() async {
    await update((data) async {
      final newMode =
          data.mode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
      await data.storage.setString('themeMode', newMode.name);
      return data.copyWith(mode: newMode);
    });
  }

  ThemeMode mode() {
    return state.value!.mode;
  }
}
