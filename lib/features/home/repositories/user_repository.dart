import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_auth/features/home/models/user.dart';
import 'package:riverpod_auth/shared/providers/http/http_provider.dart';

final userRepositoryProvider = Provider(UsersAPI.new);

abstract class UserRepository {
  Future<List<User>> fetchUsersFromAPI();
}

class UsersAPI implements UserRepository {
  UsersAPI(this._ref);

  final Ref _ref;
  late final Dio apiClient = _ref.read(dioProvider);

  @override
  Future<List<User>> fetchUsersFromAPI() async {
    List<User> userDataList = [];

    try {
      final response = await apiClient.get('/users');

      for (final item in response.data) {
        final User user = User.fromJson(item);
        userDataList.add(user);
      }
    } catch (e) {
      log(e.toString());
    }

    return userDataList;
  }
}
