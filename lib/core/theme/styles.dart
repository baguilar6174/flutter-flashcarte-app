import 'package:flutter/material.dart';

import 'package:flutter_flashcarte_app/core/theme/palette.dart';

/// Light theme
ThemeData themeLight(BuildContext context) => ThemeData(
  useMaterial3: true,
  primaryColor: Palette.primary,
  cardColor: Palette.background,
  scaffoldBackgroundColor: Palette.background,
  colorScheme: const ColorScheme.light().copyWith(
    primary: Palette.primary,
    surface: Palette.background,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Palette.primary,
    unselectedItemColor: Palette.shadowDark,
    backgroundColor: Palette.background,
  ),
);

/// Dark theme
ThemeData themeDark(BuildContext context) => ThemeData(
  useMaterial3: true,
  primaryColor: Palette.primary,
  cardColor: Palette.backgroundDark,
  scaffoldBackgroundColor: Palette.backgroundDark,
  colorScheme: const ColorScheme.dark().copyWith(primary: Palette.primary),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Palette.primary,
    unselectedItemColor: Palette.shadowDark,
    backgroundColor: Palette.backgroundDark,
  ),
);
