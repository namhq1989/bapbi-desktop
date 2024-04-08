import 'package:bapbi_app/router.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));

  doWhenWindowReady(() {
    const initialSize = Size(1200, 700);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.minSize = initialSize;
    appWindow.show();
  });
}

final themeModeProvider = StateProvider((ref) => ThemeMode.dark);

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final approuter = AppRouter();

    return MaterialApp.router(
      title: 'Flutter Demo',
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
        // colorScheme: flexSchemeDark,
        fontFamily: 'Poppins',
        splashFactory: NoSplash.splashFactory,
        subThemesData: const FlexSubThemesData(
          interactionEffects: false,
        ),
      ),
      themeMode: themeMode,
      routerConfig: approuter.config(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer(builder: (context, ref, _) {
              final theme = ref.watch(themeModeProvider);
              return ElevatedButton(
                  onPressed: () {
                    ref.read(themeModeProvider.notifier).state =
                        theme == ThemeMode.dark
                            ? ThemeMode.light
                            : ThemeMode.dark;
                  },
                  child: const Text('Switch theme'));
            }),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
