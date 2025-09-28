import 'package:flutter/material.dart';

import 'package:flutter_flashcarte_app/core/theme/palette.dart';
import 'package:flutter_flashcarte_app/core/theme/dimens.dart';

/// Light theme
ThemeData themeLight(BuildContext context) => ThemeData(
  useMaterial3: true,
  primaryColor: Palette.primary,
  cardColor: Palette.background,
  scaffoldBackgroundColor: Palette.background,
  colorScheme: const ColorScheme.light().copyWith(
    primary: Palette.primary,
    surface: Palette.background,
    onSurface: Palette.primary,
  ),
  textTheme: _buildTextTheme(brightness: Brightness.light),
  appBarTheme: AppBarTheme(
    backgroundColor: Palette.background,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: _buildAppBarTextStyle(brightness: Brightness.light),
    iconTheme: const IconThemeData(color: Palette.text),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Palette.primary,
    unselectedItemColor: Palette.shadowDark,
    backgroundColor: Palette.background,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Palette.primary,
  ),
);

/// Dark theme
ThemeData themeDark(BuildContext context) => ThemeData(
  useMaterial3: true,
  primaryColor: Palette.primary,
  cardColor: Palette.darkNavy,
  scaffoldBackgroundColor: Palette.dark,
  colorScheme: const ColorScheme.dark().copyWith(
    primary: Palette.primary,
    onSurface: Palette.primary,
  ),
  textTheme: _buildTextTheme(brightness: Brightness.dark),
  appBarTheme: AppBarTheme(
    backgroundColor: Palette.dark,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: _buildAppBarTextStyle(brightness: Brightness.dark),
    iconTheme: const IconThemeData(color: Palette.textDark),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Palette.primary,
    unselectedItemColor: Palette.shadowDark,
    backgroundColor: Palette.dark,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Palette.primary,
  ),
);

/// Build AppBar text style based on brightness
TextStyle _buildAppBarTextStyle({required Brightness brightness}) {
  final bool isDark = brightness == Brightness.dark;
  return TextStyle(
    color: isDark ? Palette.textDark : Palette.text,
    fontSize: Dimens.titleMedium,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.15,
  );
}

/// Build text theme based on brightness
TextTheme _buildTextTheme({required Brightness brightness}) {
  final bool isDark = brightness == Brightness.dark;

  return TextTheme(
    // Display styles - largest headings
    displayLarge: TextStyle(
      color: isDark ? Palette.textDark : Palette.text,
      fontSize: Dimens.displayLarge,
      fontWeight: FontWeight.w300,
    ),
    displayMedium: TextStyle(
      color: isDark ? Palette.textDark : Palette.text,
      fontSize: Dimens.displayMedium,
      fontWeight: FontWeight.w300,
    ),
    displaySmall: TextStyle(
      color: isDark ? Palette.textDark : Palette.text,
      fontSize: Dimens.displaySmall,
      fontWeight: FontWeight.w400,
    ),

    // Headline styles - section headings
    headlineLarge: TextStyle(
      color: isDark ? Palette.textDark : Palette.text,
      fontSize: Dimens.headlineLarge,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: TextStyle(
      color: isDark ? Palette.textDark : Palette.text,
      fontSize: Dimens.headlineMedium,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      color: isDark ? Palette.textDark : Palette.text,
      fontSize: Dimens.headlineSmall,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
    ),

    // Title styles - smaller headings
    titleLarge: TextStyle(
      color: isDark ? Palette.textDark : Palette.text,
      fontSize: Dimens.titleLarge,
      fontWeight: FontWeight.w500,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
      fontSize: Dimens.titleMedium,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
    ),
    titleSmall: TextStyle(
      color: isDark ? Palette.textDark : Palette.text,
      fontSize: Dimens.titleSmall,
      fontWeight: FontWeight.w500,
    ),

    // Body styles - paragraph text
    bodyLarge: TextStyle(
      color: isDark ? Palette.textDark : Palette.text,
      fontSize: Dimens.bodyLarge,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: isDark ? Palette.background : Palette.primary,
      fontSize: Dimens.bodyMedium,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      color: isDark
          ? Palette.textDark.withValues(alpha: 0.7)
          : Palette.text.withValues(alpha: 0.7),
      fontSize: Dimens.bodySmall,
      fontWeight: FontWeight.w400,
    ),

    // Label styles - buttons, tabs
    labelLarge: TextStyle(
      color: isDark ? Palette.textDark : Palette.text,
      fontSize: Dimens.labelLarge,
      fontWeight: FontWeight.w500,
    ),
    labelMedium: TextStyle(
      color: isDark ? Palette.textDark : Palette.text,
      fontSize: Dimens.labelMedium,
      fontWeight: FontWeight.w500,
    ),
    labelSmall: TextStyle(
      color: isDark ? Palette.textDark : Palette.text,
      fontSize: Dimens.labelSmall,
      fontWeight: FontWeight.w500,
    ),
  );
}
