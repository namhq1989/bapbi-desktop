import 'package:bapbi_app/component/authentication/provider/authentication.dart';
import 'package:bapbi_app/widget/hoverable_icon.dart';
import 'package:bapbi_app/widget/hoverable_menu_item.dart';
import 'package:bapbi_app/widget/popover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HeaderMenuProfile extends StatefulWidget {
  const HeaderMenuProfile({super.key});

  @override
  State<HeaderMenuProfile> createState() => _HeaderMenuProfileState();
}

class _HeaderMenuProfileState extends State<HeaderMenuProfile> {
  late VoidCallback _closePopover;

  @override
  Widget build(BuildContext context) {
    final GlobalKey profileAnchorKey = GlobalKey();

    return HoverableIcon(
      key: profileAnchorKey,
      icon: LucideIcons.userCircle,
      onTap: () {
        _closePopover = showAppPopover(
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
              Consumer(
                builder: (context, ref, _) {
                  return HoverableMenuItem(
                    iconData: LucideIcons.logOut,
                    text: 'Sign out',
                    onTap: () {
                      ref.read(authenticationProvider.notifier).signOut();
                      _closePopover();
                      // AutoRouter.of(context).replace(const LoginRoute());
                    },
                  );
                },
              ),
            ],
          ),
          onClose: () {},
        );
      },
    );
  }
}
