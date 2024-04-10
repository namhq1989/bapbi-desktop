import 'package:bapbi_app/hover_effect.dart';
import 'package:bapbi_app/hover_icon.dart';
import 'package:bapbi_app/hover_menu_item.dart';
import 'package:bapbi_app/main.dart';
import 'package:bapbi_app/popover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
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
      height: 70.0,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      // color: Theme.of(context).colorScheme.surfaceVariant,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('HEALTH'),
          SizedBox(
            child: Row(
              children: [
                Consumer(
                  builder: (context, ref, _) {
                    final theme = ref.watch(themeModeStateProvider);
                    final icon = theme == ThemeMode.light
                        ? LucideIcons.sun
                        : LucideIcons.moon;

                    return HoverableIcon(
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
                HoverableIcon(
                  key: _notificationAnchorKey,
                  icon: LucideIcons.bell,
                  onTap: () {
                    print('tapped on Notification');
                    showAppPopover(
                      context: context,
                      anchorKey: _notificationAnchorKey,
                      width: 400,
                      height: 600,
                      // padding: 12.0,
                      content: const SizedBox(
                        child: NotificationMenuContent(),
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
                HoverableIcon(
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

class NotificationMenuContent extends StatelessWidget {
  const NotificationMenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    return NotificationList();
  }
}

class NotificationList extends StatelessWidget {
  final List<NotificationItem> notifications = List.generate(10, (index) {
    // Generate dummy notification data
    return NotificationItem(
      icon: Icons.notification_important,
      title: "Notification Title $index",
      content:
          "This is the notification content for item $index. Here is some more detail about it.",
      time: DateTime.now().subtract(Duration(hours: index)),
    );
  });

  NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final item = notifications[index];
        return NotificationItemWidget(notificationItem: item);
      },
    );
  }
}

class NotificationItem {
  final IconData icon;
  final String title;
  final String content;
  final DateTime time;

  NotificationItem({
    required this.icon,
    required this.title,
    required this.content,
    required this.time,
  });
}

class NotificationItemWidget extends StatelessWidget {
  final NotificationItem notificationItem;

  const NotificationItemWidget({super.key, required this.notificationItem});

  @override
  Widget build(BuildContext context) {
    return HoverEffect(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              notificationItem.icon,
              size: 30,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          notificationItem.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        DateFormat('dd/MM, HH:mm')
                            .format(notificationItem.time),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(notificationItem.content),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
