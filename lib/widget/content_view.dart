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
    return Material(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 64.0,
          bottom: 48.0,
          left: 48.0,
          right: 48.0,
        ),
        child: Container(
          color: backgroundColor,
          width: double.infinity,
          child: child,
        ),
      ),
    );
  }
}
