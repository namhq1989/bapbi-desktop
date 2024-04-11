import 'package:bapbi_app/constant.dart';
import 'package:flutter/material.dart';

class HoverableEffect extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  const HoverableEffect({super.key, required this.child, this.onTap});

  @override
  State<HoverableEffect> createState() => _HoverableEffectState();
}

class _HoverableEffectState extends State<HoverableEffect> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap?.call();
      },
      child: MouseRegion(
        onEnter: (_) => _setHovering(true),
        onExit: (_) => _setHovering(false),
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppStyles.borderRadius),
            color: _isHovering
                ? Theme.of(context).colorScheme.inversePrimary
                : Colors.transparent,
          ),
          child: widget.child,
        ),
      ),
    );
  }

  void _setHovering(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }
}
