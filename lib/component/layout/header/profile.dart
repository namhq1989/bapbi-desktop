import 'package:bapbi_app/widget/hoverable_icon.dart';
import 'package:bapbi_app/widget/hoverable_menu_item.dart';
import 'package:bapbi_app/widget/popover.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HeaderMenuProfile extends StatelessWidget {
  const HeaderMenuProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey profileAnchorKey = GlobalKey();

    return HoverableIcon(
      key: profileAnchorKey,
      icon: LucideIcons.userCircle,
      onTap: () {
        showAppPopover(
          context: context,
          anchorKey: profileAnchorKey,
          width: 200,
          height: 160,
          padding: 12.0,
          content: Column(
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
                onTap: () {},
              ),
              const SizedBox(
                height: 16.0,
              ),
              HoverableMenuItem(
                iconData: LucideIcons.logOut,
                text: 'Sign out',
                onTap: () {},
              ),
            ],
          ),
          onClose: () {},
        );
      },
    );
  }
}
