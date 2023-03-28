import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_auth/features/home/views/home_screen.dart';
import 'package:riverpod_auth/features/home/views/user_detail_screen.dart';
import 'package:riverpod_auth/features/login/views/login_screen.dart';
import 'package:riverpod_auth/features/login/provider/auth/auth_provider.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      debugLogDiagnostics: false,
      initialLocation: '/',
      routes: _routes,
      redirect: (BuildContext context, GoRouterState state) {
        final token = ref.watch(tokenProvider);

        final bool gotToken = token == "" ? false : true;

        final bool isLogin = state.location == '/login';

        if (!gotToken) {
          return isLogin ? null : '/login';
        }

        return null;
      },
    );
  },
);

List<GoRoute> get _routes => [
      GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'userScreen',
            name: 'userScreen',
            builder: (context, state) => UserDetailScreen(
              id: state.queryParams['id']!,
            ),
          ),
        ],
      ),
    ];
