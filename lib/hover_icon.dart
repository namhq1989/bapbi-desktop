import 'package:bapbi_app/hover_effect.dart';
import 'package:flutter/material.dart';

class HoverIcon extends StatelessWidget {
  const HoverIcon({
    super.key,
    required this.icon,
    this.size,
    this.onTap,
  });

  final IconData icon;
  final double? size;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return HoverEffect(
      onTap: onTap,
      child: Icon(
        icon,
        size: size ?? 20.0,
      ),
    );
  }
}
