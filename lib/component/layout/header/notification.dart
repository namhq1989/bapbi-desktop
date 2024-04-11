import 'package:bapbi_app/component/notification/list_tile.dart';
import 'package:bapbi_app/component/notification/model.dart';
import 'package:bapbi_app/widget/hoverable_icon.dart';
import 'package:bapbi_app/widget/popover.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HeaderMenuNotification extends StatelessWidget {
  const HeaderMenuNotification({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey notificationAnchorKey = GlobalKey();
    final List<NotificationItem> notifications = List.generate(10, (index) {
      // Generate dummy notification data
      return NotificationItem(
        icon: Icons.notification_important,
        title: 'Notification Title $index',
        content:
            'This is the notification content for item $index. Here is some more detail about it.',
        time: DateTime.now().subtract(Duration(hours: index)),
      );
    });

    return HoverableIcon(
      key: notificationAnchorKey,
      icon: LucideIcons.bell,
      onTap: () {
        showAppPopover(
          context: context,
          anchorKey: notificationAnchorKey,
          width: 400,
          height: notifications.isEmpty ? 200 : 600,
          content: NotificationListTile(notifications: notifications),
          onClose: () {},
        );
      },
    );
  }
}
