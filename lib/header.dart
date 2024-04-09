import 'package:bapbi_app/hover_icon.dart';
import 'package:bapbi_app/main.dart';
import 'package:bapbi_app/popover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons/lucide_icons.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final GlobalKey _notificationAnchorKey = GlobalKey();
  final GlobalKey _profileAnchorKey = GlobalKey();

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

                    return HoverIcon(
                      icon: icon,
                      onTap: () {
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
                HoverIcon(
                  key: _notificationAnchorKey,
                  icon: LucideIcons.bell,
                  onTap: () {
                    print('tapped on Notification');
                    showAppPopover(
                      context: context,
                      anchorKey: _notificationAnchorKey,
                      width: 200,
                      height: 166,
                      padding: 12.0,
                      content: const SizedBox(
                        child: ProfileMenuContent(),
                      ),
                      onClose: () {
                        print('profile popver closed');
                      },
                    );
                  },
                ),
                const SizedBox(
                  width: 16.0,
                ),
                HoverIcon(
                  key: _profileAnchorKey,
                  icon: LucideIcons.userCircle,
                  onTap: () {
                    print('tapped on Profile');
                    showAppPopover(
                      context: context,
                      anchorKey: _profileAnchorKey,
                      width: 200,
                      height: 160,
                      padding: 12.0,
                      content: const SizedBox(
                        child: ProfileMenuContent(),
                      ),
                      onClose: () {
                        print('profile popver closed');
                      },
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

class ProfileMenuContent extends StatelessWidget {
  const ProfileMenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Text('Nam HQ', style: TextStyle(fontSize: 14)),
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Divider(
          height: 2.0,
        ),
        const SizedBox(
          height: 24.0,
        ),
        HoverableMenuItem(
          iconData: LucideIcons.settings,
          text: 'Account settings',
          onTap: () {
            // Handle Settings tap
            print('Settings tapped');
          },
        ),
        const SizedBox(
          height: 16.0,
        ),
        HoverableMenuItem(
          iconData: LucideIcons.logOut,
          text: 'Sign out',
          onTap: () {
            // Handle Logout tap
            print('Logout tapped');
          },
        ),
      ],
    );
  }
}

class HoverableMenuItem extends StatefulWidget {
  final IconData iconData;
  final String text;
  final VoidCallback onTap;

  const HoverableMenuItem({
    super.key,
    required this.iconData,
    required this.text,
    required this.onTap,
  });

  @override
  State<HoverableMenuItem> createState() => _HoverableMenuItemState();
}

class _HoverableMenuItemState extends State<HoverableMenuItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _setHover(true),
      onExit: (_) => _setHover(false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                widget.iconData,
                color: _isHovered
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onSurface,
                size: 16.0,
              ),
              const SizedBox(width: 8),
              Text(
                widget.text,
                style: TextStyle(
                  color: _isHovered
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _setHover(bool value) {
    setState(() {
      _isHovered = value;
    });
  }
}
