import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationManager extends StateNotifier<List<String>> {
  NotificationManager() : super([]);

  void addNotification(String message) {
    state = [...state, message]; // Append new message to the current state
  }

  void removeNotification(String message) {
    state = state
        .where((msg) => msg != message)
        .toList(); // Remove the message after shown
  }
}

final notificationManagerProvider =
    StateNotifierProvider<NotificationManager, List<String>>((ref) {
  return NotificationManager();
});
