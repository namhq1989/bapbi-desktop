import 'package:flutter/material.dart';

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
