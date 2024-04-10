import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:http/http.dart' as http;

const List<String> scopes = <String>[
  'email',
  'https://www.googleapis.com/auth/userinfo.profile',
];

const String clientId =
    '801463191685-ehfa3smacs35qv5b46sfslihevjra0e5.apps.googleusercontent.com';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          Container(
            width: 100,
            height: 100,
            color: Colors.green, // Placeholder for the logo
          ),
          const SizedBox(height: 10),
          const Text(
            'A useful application for office workers',
          ),
          const SizedBox(height: 30),
          SignInWithGoogleButton(
            text: 'Sign in with Google',
            onPressed: () async {
              final authcode = await signInWithGoogle();
              print('authcode $authcode');
            },
          ),
          const SizedBox(height: 30),
          Divider(
            height: 2,
            color: Theme.of(context).colorScheme.outline,
          ),
          const SizedBox(height: 30),
          Text(
            'No account? Let\'s sign up',
            style: TextStyle(
              color: Theme.of(context).colorScheme.outline,
              fontSize: 13.0,
            ),
          ),
          const SizedBox(height: 10),
          SignInWithGoogleButton(
            text: 'Sign up with Google',
            onPressed: () {
              // Handle sign-up logic
              print('Signing up with Google');
            },
          ),
          const SizedBox(height: 30),
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
        color: Colors.yellow, // Extra container with yellow color
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
      ),
    );
  }
}

Future<String> signInWithGoogle() async {
  final port = await _getUnusedPort();
  final redirectUri = 'http://localhost:$port';
  final scope = Uri.encodeComponent('email profile');
  final authUrl =
      'https://accounts.google.com/o/oauth2/v2/auth?client_id=$clientId&redirect_uri=$redirectUri&response_type=code&scope=$scope&access_type=offline&prompt=select_account';

  await _launchUrl(authUrl);

  final authCode = await _startLocalServer(port);
  final data = await exchangeCodeForTokens(authCode, redirectUri);
  print(data);
  return '';
}

Future<int> _getUnusedPort() async =>
    await HttpServer.bind(InternetAddress.loopbackIPv4, 0).then((server) {
      final port = server.port;
      server.close();
      return port;
    });

Future<void> _launchUrl(String url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}

Future<String> _startLocalServer(int port) async {
  final completer = Completer<String>();
  final server = await HttpServer.bind(InternetAddress.loopbackIPv4, port);

  server.listen((HttpRequest request) async {
    final code = request.uri.queryParameters['code'];
    if (code != null) {
      completer.complete(code);
      request.response
        ..headers.contentType = ContentType.html
        ..write(
            '<html><body><p>You can now close this window.</p></body></html>')
        ..close();
      await server.close();
    }
  });

  return completer.future;
}

Future<Map<String, dynamic>> exchangeCodeForTokens(
    String authCode, String redirectUri) async {
  const String clientSecret = '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';

  final response = await http.post(
    Uri.parse('https://oauth2.googleapis.com/token'),
    headers: {'Content-Type': 'application/x-www-form-urlencoded'},
    body: {
      'code': authCode,
      'client_id': clientId,
      'client_secret': clientSecret,
      'redirect_uri': redirectUri,
      'grant_type': 'authorization_code',
    },
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> tokens = json.decode(response.body);
    return tokens; // This map contains the access token, refresh token, etc.
  } else {
    throw Exception(
        'Failed to exchange authorization code for tokens. Status code: ${response.statusCode}');
  }
}
