import 'package:flutter/material.dart';

import 'package:flutter_flashcarte_app/core/core.dart';

class Empty extends StatelessWidget {
  final String? errorMessage;

  const Empty({super.key, this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text(errorMessage ?? Strings.of(context)!.errorNoData)],
    );
  }
}
