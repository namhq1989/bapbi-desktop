import 'dart:async';
import 'dart:io';

import 'package:url_launcher/url_launcher_string.dart';

Future<int> getUnusedPort() async =>
    await HttpServer.bind(InternetAddress.loopbackIPv4, 0).then((server) {
      final port = server.port;
      server.close();
      return port;
    });

Future<void> launchUrl(String url) async {
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}
