import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_auth/features/home/models/user.dart';
import 'package:riverpod_auth/features/home/repositories/user_repository.dart';
import 'package:riverpod_auth/shared/providers/router/router_provider.dart';

final userProvider =
    StateNotifierProvider<UserNotifier, AsyncValue<List<User>>>(
        (ref) => UserNotifier(ref));

class UserNotifier extends StateNotifier<AsyncValue<List<User>>> {
  UserNotifier(this._ref) : super(const AsyncValue.loading()) {
    fetchUsers();
  }

  final Ref _ref;

  late final _userRepositoryProvider = _ref.read(userRepositoryProvider);

  Future<void> fetchUsers() async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(
        () => _userRepositoryProvider.fetchUsersFromAPI());

    if (state.hasError) {
      log('State Error: ${state.error}');
    }

    _ref.watch(routerProvider).go('/');
  }
}
