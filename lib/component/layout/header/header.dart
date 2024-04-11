import 'package:bapbi_app/component/layout/header/notification.dart';
import 'package:bapbi_app/component/layout/header/profile.dart';
import 'package:bapbi_app/component/layout/header/theme_toggler.dart';
import 'package:flutter/material.dart';

class _ItemGap extends StatelessWidget {
  const _ItemGap();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: 16.0);
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      // color: Theme.of(context).colorScheme.surfaceVariant,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('HEALTH'),
          SizedBox(
            child: Row(
              children: [
                ThemeToggler(),
                _ItemGap(),
                HeaderMenuNotification(),
                _ItemGap(),
                HeaderMenuProfile(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
