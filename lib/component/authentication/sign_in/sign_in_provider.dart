import 'package:bapbi_app/component/authentication/sign_in/model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_provider.g.dart';

@riverpod
class SignInWithGoogle extends _$SignInWithGoogle {
  @override
  SingInResponse build() {
    return SingInResponse.empty();
  }

  Future<void> signInWithGoogle(String token) async {
    // var response = http.
  }
}
