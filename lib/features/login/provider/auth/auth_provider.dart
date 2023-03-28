import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_auth/features/home/providers/user_provider.dart';
import 'package:riverpod_auth/features/login/models/login_request.dart';
import 'package:riverpod_auth/features/login/models/login_states.dart';
import 'package:riverpod_auth/features/login/repositories/auth/auth_repository.dart';

final authProvider = StateNotifierProvider<AuthNotifier, LoginState>((ref) {
  return AuthNotifier(ref);
});

class AuthNotifier extends StateNotifier<LoginState> {
  AuthNotifier(
    this._ref,
  ) : super(LoginState.initial());

  final Ref _ref;
  late final _authRepository = _ref.read(authRepositoryProvider);

  Future<void> signInRequest(LoginRequest loginRequest) async {
    state = LoginState.loading();

    try {
      final token = await _authRepository.signIn(loginRequest);

      if (token.isEmpty) {
        state = LoginState.error("Login Failed");
      }

      _ref.read(tokenProvider.notifier).state = token;

      state = LoginState.success();
    } catch (e) {
      state = LoginState.error(e.toString());
    }
  }

  Future<void> logout() async {
    state = LoginState.initial();

    _ref.invalidate(userProvider);
    _ref.invalidate(tokenProvider);
  }
}

final tokenProvider = StateProvider<String>((ref) => '');
