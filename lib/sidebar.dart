import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 0.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.0,
          ),
          HoverWidget(),
          SizedBox(
            height: 20.0,
          ),
          HoverWidget(),
          SizedBox(
            height: 20.0,
          ),
          HoverWidget(),
          SizedBox(
            height: 20.0,
          ),
          HoverWidget(),
        ],
      ),
    );
  }
}

class HoverWidget extends StatefulWidget {
  @override
  _HoverWidgetState createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: isHovered
              ? Theme.of(context).colorScheme.secondary
              : Colors.transparent,
        ),
        child: const Column(
          children: [
            Icon(
              LucideIcons.heartPulse,
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              'Health',
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
