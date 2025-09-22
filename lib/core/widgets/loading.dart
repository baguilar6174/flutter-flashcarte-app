import 'package:flutter/material.dart';

import 'package:flutter_flashcarte_app/core/core.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimens.space16),
      child: const Center(child: CircularProgressIndicator()),
    );
  }
}
