import 'package:flutter/material.dart';

class AppColorScheme {
  static final Color baseColor = Color(0xFF120A8F);

  static final ColorScheme colorScheme = ColorScheme(
    primary: baseColor,
    primaryContainer: const Color(0xFF0F0875), // Darker shade
    secondary: const Color(0xFF2D20A8),       // Slightly lighter shade
    secondaryContainer: const Color(0xFF7365D1), // Even lighter shade
    surface: const Color(0xFFE8E6FF),         // Light tint
    error: Colors.red,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onSurfaceVariant: Colors.grey.shade600,
    onError: Colors.white,
    brightness: Brightness.light,
  );
}