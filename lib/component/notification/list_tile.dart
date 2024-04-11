import 'package:bapbi_app/component/notification/model.dart';
import 'package:bapbi_app/component/notification/tile.dart';
import 'package:bapbi_app/widget/container_standard.dart';
import 'package:flutter/material.dart';

class NotificationListTile extends StatelessWidget {
  const NotificationListTile({super.key, required this.notifications});

  final List<NotificationItem> notifications;

  @override
  Widget build(BuildContext context) {
    if (notifications.isEmpty) {
      return const ContainerStandard(
          content: Center(
        child: Text('You have no notifications yet!'),
      ));
    }

    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        return NotificationItemTile(notification: notifications[index]);
      },
    );
  }
}
