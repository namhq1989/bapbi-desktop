import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ItemSpace extends StatelessWidget {
  const ItemSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 10.0);
  }
}

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  int selectedIndex = 0; // Default to first item

  void selectItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ItemSpace(),
          SizedBox(
            // color: Colors.blue,
            width: double.infinity,
            height: 60,
            child: Center(
              child: SvgPicture.asset(
                'assets/images/logo.svg',
                width: 30,
                height: 30,
              ),
            ),
          ),
          const ItemSpace(),
          const ItemSpace(),
          HoverWidget(
            icon: LucideIcons.heartPulse,
            title: 'Health',
            isSelected: selectedIndex == 0,
            onTap: () => selectItem(0),
          ),
          const ItemSpace(),
          HoverWidget(
            icon: LucideIcons.alarmClock,
            title: 'Schedule',
            isSelected: selectedIndex == 1,
            onTap: () => selectItem(1),
          ),
          const ItemSpace(),
          HoverWidget(
            icon: LucideIcons.stickyNote,
            title: 'Note',
            isSelected: selectedIndex == 2,
            onTap: () => selectItem(2),
          ),
          const ItemSpace(),
          HoverWidget(
            icon: LucideIcons.circleDollarSign,
            title: 'Expense',
            isSelected: selectedIndex == 3,
            onTap: () => selectItem(3),
          ),
          const ItemSpace(),
        ],
      ),
    );
  }
}

class HoverWidget extends StatefulWidget {
  const HoverWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    this.isSelected = false,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  _HoverWidgetState createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (event) => setState(() => isHovered = true),
        onExit: (event) => setState(() => isHovered = false),
        cursor: SystemMouseCursors.click,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: isHovered
                ? Theme.of(context).colorScheme.inversePrimary
                : Colors.transparent,
          ),
          child: Column(
            children: [
              Icon(
                widget.icon,
                color: widget.isSelected
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight:
                      widget.isSelected ? FontWeight.bold : FontWeight.normal,
                  color: widget.isSelected
                      ? Theme.of(context).colorScheme.primary
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
