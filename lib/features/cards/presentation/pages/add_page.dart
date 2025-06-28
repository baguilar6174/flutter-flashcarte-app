import 'package:flutter/material.dart';

import 'package:flutter_flashcarte_app/core/localization/generated/strings.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          Strings.of(context)!.homeTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
