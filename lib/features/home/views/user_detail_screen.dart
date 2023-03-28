import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_auth/features/home/models/user.dart';
import 'package:riverpod_auth/features/home/providers/user_provider.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Detail Screen'),
      ),
      body: Consumer(
        builder: (_, ref, __) {
          final usersData = ref.watch(userProvider);

          return usersData.when(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (error, stackTrace) => Center(
              child: Text(error.toString()),
            ),
            data: (users) {
              final user = users.firstWhere((user) => user.id == int.parse(id));

              return Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                height: 300,
                child: Card(
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildUserCard(user, context),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Column _buildUserCard(User user, BuildContext context) {
    return Column(
      children: [
        Text(
          user.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Divider(),
        Text(
          user.email,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(
            user.phone,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        const Divider(),
        Text(
          user.address.suite,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          user.address.street,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          user.address.zipcode,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Geo: ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              user.address.geo.lat,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Text(' - '),
            Text(
              user.address.geo.lng,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        const Divider(),
        Text(
          user.company.name,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          user.company.catchPhrase,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Text(
          user.company.bs,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
