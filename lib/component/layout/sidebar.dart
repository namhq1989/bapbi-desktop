import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ItemSpace extends StatelessWidget {
  const ItemSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 10.0);
  }
}

class Sidebar extends StatefulWidget {
  const Sidebar({super.key, required this.onSelect});

  final Function(int) onSelect;

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  int _selectedIndex = 0;

  // Define your menu items including the screen widget they should show
  final List<MenuItem> _menuItems = [
    MenuItem(
      icon: LucideIcons.heartPulse,
      title: 'Health',
    ),
    MenuItem(
      icon: LucideIcons.alarmClock,
      title: 'Schedule',
    ),
    MenuItem(
      icon: LucideIcons.stickyNote,
      title: 'Note',
    ),
    MenuItem(
      icon: LucideIcons.circleDollarSign,
      title: 'Expense',
    ),
  ];

  void selectItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onSelect(index);
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
            width: double.infinity,
            height: 60,
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                width: 30,
                height: 30,
              ),
            ),
          ),
          const ItemSpace(),
          const ItemSpace(),
          ..._menuItems.map((item) {
            return Column(
              children: [
                HoverWidget(
                  icon: item.icon,
                  title: item.title,
                  isSelected: _selectedIndex == _menuItems.indexOf(item),
                  onTap: () => selectItem(_menuItems.indexOf(item)),
                ),
                const ItemSpace(),
              ],
            );
          }),
        ],
      ),
    );
  }
}

class MenuItem {
  final IconData icon;
  final String title;

  MenuItem({required this.icon, required this.title});
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
  State<HoverWidget> createState() => _HoverWidgetState();
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
