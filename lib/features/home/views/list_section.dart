import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_auth/features/home/models/user.dart';

class ListSection extends StatelessWidget {
  const ListSection({
    super.key,
    required this.usersData,
  });

  final List<User> usersData;

  Card _buildListTiles(User user, BuildContext context) {
    return Card(
      color: Colors.amber,
      child: ListTile(
        onTap: () {
          context.pushNamed(
            'userScreen',
            queryParams: {'id': user.id.toString()},
          );
        },
        title: Text(user.name),
        subtitle: Text(user.email),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return usersData.isNotEmpty
        ? ListView.builder(
            itemCount: usersData.length,
            itemBuilder: (context, index) {
              final user = usersData[index];

              return _buildListTiles(user, context);
            },
          )
        : const Center(child: Text('No users data found!'));
  }
}
