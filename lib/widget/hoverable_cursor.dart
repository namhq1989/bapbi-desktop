import 'package:flutter/material.dart';

class HoverableCursor extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  const HoverableCursor({super.key, required this.child, this.onTap});

  @override
  State<HoverableCursor> createState() => _HoverableCursorState();
}

class _HoverableCursorState extends State<HoverableCursor> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap?.call();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: widget.child,
      ),
    );
  }
}
