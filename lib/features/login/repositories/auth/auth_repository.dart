import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_string/random_string.dart';
import 'package:riverpod_auth/features/login/models/login_request.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryAPI();
});

abstract class AuthRepository {
  Future<String> signIn(LoginRequest loginRequest);
}

class AuthRepositoryAPI implements AuthRepository {
  @override
  Future<String> signIn(LoginRequest loginRequest) async {
    final token = randomAlphaNumeric(10);

    return token;
  }
}
