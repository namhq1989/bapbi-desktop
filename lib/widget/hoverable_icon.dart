import 'package:bapbi_app/widget/hoverable_effect.dart';
import 'package:flutter/material.dart';

class HoverableIcon extends StatelessWidget {
  const HoverableIcon({
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
    return HoverableEffect(
      onTap: onTap,
      child: Icon(
        icon,
        size: size ?? 22.0,
      ),
    );
  }
}
