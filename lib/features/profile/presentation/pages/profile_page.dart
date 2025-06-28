import 'package:flutter/material.dart';

import 'package:flutter_flashcarte_app/core/localization/generated/strings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          Strings.of(context)!.profileTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
