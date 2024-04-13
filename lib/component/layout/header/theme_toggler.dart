import 'package:bapbi_app/core/theme.dart';
import 'package:bapbi_app/widget/hoverable_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ThemeToggler extends StatelessWidget {
  const ThemeToggler({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final theme = ref.watch(themeModeStateProvider);
        final icon =
            theme == ThemeMode.light ? LucideIcons.sun : LucideIcons.moon;

        return HoverableIcon(
          icon: icon,
          onTap: () {
            ref.read(themeModeStateProvider.notifier).toggleThemeMode();
          },
        );
      },
    );
  }
}
