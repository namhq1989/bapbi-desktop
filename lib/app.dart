import 'package:bapbi_app/component/authentication/provider/authentication.dart';
import 'package:bapbi_app/component/english/provider/clipboard.dart';
import 'package:bapbi_app/constant.dart';
import 'package:bapbi_app/core/theme.dart';
import 'package:bapbi_app/router.dart';
import 'package:bapbi_app/router.gr.dart';
import 'package:flash/flash_helper.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void getClipboardData() async {
    ClipboardData? clipboardData =
        await Clipboard.getData(Clipboard.kTextPlain);
    if (clipboardData != null) {
      ref.read(clipboardTextProvider.notifier).textCopied(clipboardData.text!);
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      getClipboardData();
    }
  }

  @override
  Widget build(BuildContext context) {
    // watch auth
    ref.listen(authenticationProvider, (_, state) {
      state.whenData((data) {
        if (data.isAuthenticated) {
          router.replace(const LayoutRoute());
        } else {
          router.replace(const SignInRoute());
        }
      });
    });

    final authState = ref.watch(authenticationProvider);
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
          elevatedButtonRadius: AppStyles.borderRadius,
        ),
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.indigoM3,
        fontFamily: 'Poppins',
        splashFactory: NoSplash.splashFactory,
        subThemesData: const FlexSubThemesData(
          interactionEffects: false,
          elevatedButtonRadius: AppStyles.borderRadius,
        ),
      ),
      themeMode: themeMode,
      builder: (context, r) {
        return authState.when(
          data: (_) {
            final theme = Theme.of(context);
            return ProviderScope(
              overrides: [themeModeProvider.overrideWithValue(theme)],
              child: Toast(navigatorKey: navKey, child: r!),
            );
          },
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
