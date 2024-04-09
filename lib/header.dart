import 'package:bapbi_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:popover/popover.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: Text('HEALTH')),
          SizedBox(
            child: Row(
              children: [
                Consumer(
                  builder: (context, ref, _) {
                    final theme = ref.watch(themeModeStateProvider);
                    final icon = theme == ThemeMode.light
                        ? LucideIcons.sun
                        : LucideIcons.moon;

                    return HoverWidget(
                      icon: icon,
                      onTap: (context) {
                        ref
                            .read(themeModeStateProvider.notifier)
                            .toggleThemeMode();
                      },
                    );
                  },
                ),
                const SizedBox(
                  width: 16.0,
                ),
                HoverWidget(
                  icon: LucideIcons.bell,
                  onTap: (context) {
                    print('tapped on Notification');
                  },
                ),
                const SizedBox(
                  width: 16.0,
                ),
                HoverWidget(
                  icon: LucideIcons.userCircle,
                  onTap: (context) {
                    showPopover(
                      context: context,
                      bodyBuilder: (context) {
                        return const Center(
                          child: Text('Profile'),
                        );
                      },
                      radius: 10.0,
                      direction: PopoverDirection.bottom,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      width: 300,
                      height: 500,
                      arrowDxOffset: 100,
                      barrierColor: Colors.transparent,
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HoverWidget extends StatefulWidget {
  const HoverWidget({
    super.key,
    required this.icon,
    required this.onTap,
    this.isSelected = false,
  });

  final IconData icon;
  final Function(BuildContext) onTap;
  final bool isSelected;

  @override
  State<HoverWidget> createState() => _HoverWidgetState();
}

class _HoverWidgetState extends State<HoverWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap(context);
      },
      child: MouseRegion(
        onEnter: (event) => setState(() => isHovered = true),
        onExit: (event) => setState(() => isHovered = false),
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 9.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: isHovered
                ? Theme.of(context).colorScheme.inversePrimary
                : Colors.transparent,
          ),
          child: Icon(
            widget.icon,
            size: 20.0,
            color: widget.isSelected
                ? Theme.of(context).colorScheme.primary
                : null,
          ),
        ),
      ),
    );
  }
}
