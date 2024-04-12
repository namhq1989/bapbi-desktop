import 'package:bapbi_app/app.dart';
import 'package:bapbi_app/core/config.dart';
import 'package:bapbi_app/core/http.dart';
import 'package:bapbi_app/core/storage.dart';
import 'package:bapbi_app/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'startup.g.dart';

@Riverpod(keepAlive: true)
Future<void> appStartup(AppStartupRef ref) async {
  ref.onDispose(() {
    ref.invalidate(configProvider);
    ref.invalidate(storageProvider);
    ref.invalidate(httpProvider);
    ref.invalidate(themeProvider);
  });

  await ref.watch(configProvider.future);
  await ref.watch(storageProvider.future);
  await ref.watch(httpProvider.future);
  await ref.watch(themeProvider.future);
}

class AppStartup extends ConsumerWidget {
  const AppStartup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartup = ref.watch(appStartupProvider);

    return appStartup.when(
      data: (_) {
        return const App();
      },
      error: (e, _) {
        return AppStartupError(
          message: e.toString(),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class AppStartupError extends StatelessWidget {
  const AppStartupError({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }
}
