

import 'package:flutter/material.dart';

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 15,
        width: 15,
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );
  }
}
