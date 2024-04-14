import 'package:bapbi_app/constant.dart';
import 'package:bapbi_app/core/notification.dart';
import 'package:bapbi_app/widget/container_standard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flash/flash.dart';

class AppNotificationListener extends ConsumerWidget {
  const AppNotificationListener({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = ref.watch(notificationManagerProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifications.forEach((message) {
        showNotification(context, message);
        ref
            .read(notificationManagerProvider.notifier)
            .removeNotification(message);
      });
    });

    return Container();
  }

  void showNotification(BuildContext context, String message) {
    showFlash(
        context: context,
        barrierDismissible: true,
        duration: const Duration(seconds: 5),
        builder: (context, controller) {
          return Align(
            alignment: Alignment.bottomRight,
            child: Flash(
              controller: controller,
              position: FlashPosition.bottom,
              dismissDirections: const [FlashDismissDirection.startToEnd],
              child: Container(
                margin: const EdgeInsets.only(bottom: 20.0, right: 20.0),
                child: Material(
                  borderRadius: BorderRadius.circular(AppStyles.borderRadius),
                  elevation: 4.0,
                  child: Container(
                    width: 300,
                    padding: const EdgeInsets.symmetric(
                        vertical: 24.0, horizontal: 32.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      borderRadius:
                          BorderRadius.circular(AppStyles.borderRadius),
                    ),
                    child: Text(message),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
