import 'package:flutter/material.dart';

class ContentView extends StatelessWidget {
  final Color? backgroundColor;
  final Widget child;

  const ContentView({
    super.key,
    this.backgroundColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
        child: child,
      ),
    );
  }
}
