import 'package:bapbi_app/component/user/me_provider.dart';
import 'package:bapbi_app/component/user/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<String?> fetchAccessToken() async {
  return 'fake_access_token';
}

Future<UserData?> fetchUserData(String token) async {
  await Future.delayed(const Duration(seconds: 1));
  if (token == 'fake_access_token') {
    return UserData(id: 'namhq', name: 'Nam HQ');
  } else {
    return null;
  }
}

// Provider to manage authentication state and fetch user data
final authStateProvider = FutureProvider<bool>((ref) async {
  final accessToken = await fetchAccessToken();
  if (accessToken == null) {
    return false;
  } else {
    final userData = await fetchUserData(accessToken);
    if (userData == null) {
      return false;
    } else {
      ref.read(meProvider.notifier).state = userData;
      return true;
    }
  }
});
