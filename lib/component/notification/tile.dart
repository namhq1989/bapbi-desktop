import 'package:bapbi_app/component/notification/model.dart';
import 'package:bapbi_app/widget/hoverable_effect.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationItemTile extends StatelessWidget {
  const NotificationItemTile({super.key, required this.notification});

  final NotificationItem notification;

  @override
  Widget build(BuildContext context) {
    return HoverableEffect(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              notification.icon,
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
                          notification.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        DateFormat('dd/MM, HH:mm').format(notification.time),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(notification.content),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
