import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_auth/features/home/providers/user_provider.dart';
import 'package:riverpod_auth/features/home/views/list_section.dart';
import 'package:riverpod_auth/features/login/provider/auth/auth_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Consumer(
        builder: (_, ref, __) {
          final users = ref.watch(userProvider);

          return users.when(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stackTrace) => Center(
              child: Text(error.toString()),
            ),
            data: (usersData) => Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('You are logged in!'),
                    const SizedBox(height: 20),
                    SizedBox(
                        height: 500,
                        width: double.infinity,
                        child: ListSection(usersData: usersData)),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(authProvider.notifier).logout();

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('You have logged out!'),
                          ),
                        );
                      },
                      child: const Text('Sign Out'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
