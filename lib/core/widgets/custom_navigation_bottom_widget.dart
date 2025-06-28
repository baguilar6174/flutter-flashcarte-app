import 'package:flutter/material.dart';

import 'package:flutter_flashcarte_app/core/localization/generated/strings.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.add_to_photos_sharp),
          label: Strings.of(context)!.homeRoute,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: Strings.of(context)!.profileRoute,
        ),
      ],
    );
  }
}
