import 'package:auto_route/auto_route.dart';
import 'package:bapbi_app/component/authentication/provider/authentication.dart';
import 'package:bapbi_app/component/authentication/provider/sign_in_with_google.dart';
import 'package:bapbi_app/router.dart';
import 'package:bapbi_app/router.gr.dart';
import 'package:bapbi_app/widget/hoverable_cursor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons/lucide_icons.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  final double smallScreenWidthBreakpoint = 1300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          bool isSmallScreen =
              constraints.maxWidth <= smallScreenWidthBreakpoint;

          if (isSmallScreen) {
            return const Center(
              child: LoginContainer(
                isStandalone: true,
              ),
            );
          } else {
            return const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoginContainer(
                    isStandalone: false,
                  ),
                  ImageContainer(),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key, required this.isStandalone});

  final bool isStandalone;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(10.0),
          bottomLeft: const Radius.circular(10.0),
          topRight: Radius.circular(isStandalone ? 10.0 : 0.0),
          bottomRight: Radius.circular(isStandalone ? 10.0 : 0.0),
        ),
      ),
      width: 500,
      height: 600,
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 80.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.asset(
              'assets/images/logo.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ), // Placeholder for the logo
          ),
          const SizedBox(height: 10),
          const Text(
            'A useful application for office workers',
          ),
          const SizedBox(height: 50),
          Consumer(
            builder: (context, ref, _) {
              return SignInButton(
                text: 'Sign in with Google',
                bgColor: const Color(0xFFF2F2F2),
                textColor: const Color(0xFF1F1F1F),
                logo: 'google_logo.png',
                onPressed: () async {
                  final error = await ref
                      .read(signInWithGoogleProvider.notifier)
                      .signInWithGoogle();
                  if (error == null) {
                    ref.read(appRouterProvider).replace(const HomeRoute());
                  } else {
                    // print('error: ${error.message}');
                  }
                },
              );
            },
          ),
          const SizedBox(height: 12),
          Consumer(
            builder: (context, ref, _) {
              return SignInButton(
                text: 'Sign in with Facebook',
                bgColor: const Color(0xFF1877F2),
                textColor: const Color(0xFFFFFFFF),
                logo: 'facebook_logo.png',
                onPressed: () async {
                  ref
                      .read(authenticationProvider.notifier)
                      .signInWithFacebook();
                },
              );
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                LucideIcons.badgeCheck,
                size: 16.0,
                color: Theme.of(context).colorScheme.outline,
              ),
              const SizedBox(width: 6.0),
              Text(
                'Free to use',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.outline,
                  fontSize: 13.0,
                ),
              ),
              const SizedBox(width: 12.0),
              Icon(
                LucideIcons.badgeCheck,
                size: 16.0,
                color: Theme.of(context).colorScheme.outline,
              ),
              const SizedBox(width: 6.0),
              Text(
                'No credit card required',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.outline,
                  fontSize: 13.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SignInWithGoogleButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SignInWithGoogleButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: const Icon(LucideIcons.youtube),
        label: Text(text),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          minimumSize: const Size(200, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 600,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
        child: Image.asset(
          'assets/images/login_side_photo.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class SignInButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final String logo;
  final VoidCallback onPressed;

  const SignInButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.bgColor,
    required this.textColor,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return HoverableCursor(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        width: double.infinity,
        height: 40.0,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 38.0,
              height: 38.0,
              margin: const EdgeInsets.only(left: 1.0, top: 1.0, bottom: 1.0),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(
                  'assets/images/$logo',
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14.0,
                  color: textColor,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
          ],
        ),
      ),
    );
  }
}
