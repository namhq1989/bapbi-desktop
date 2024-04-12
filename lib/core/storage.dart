import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'storage.g.dart';

@Riverpod(keepAlive: true)
Future<SharedPreferences> storage(StorageRef ref) =>
    SharedPreferences.getInstance();
