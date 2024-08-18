import 'package:flutter/material.dart';
import 'app_color_scheme.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    colorScheme: AppColorScheme.colorScheme,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColorScheme.colorScheme.primary,
      foregroundColor: AppColorScheme.colorScheme.onPrimary,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColorScheme.colorScheme.secondary,
      foregroundColor: AppColorScheme.colorScheme.onSecondary,
    ),
    // Define other theme properties as needed
  );
}