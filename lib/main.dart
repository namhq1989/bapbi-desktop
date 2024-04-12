import 'package:bapbi_app/startup.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: AppStartup()));

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
