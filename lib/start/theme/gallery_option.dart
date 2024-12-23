import 'package:events_test/start/theme/color_schemes.g.dart';
import 'package:flutter/material.dart';

class GalleryOptionTheme {
  static ThemeData darkThemeData(BuildContext context) {
    return themeData(darkColorScheme, context);
  }

  static ThemeData themeData(ColorScheme colorScheme, BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colorScheme.surface,
      ),
      //600 - semibold, 300-light, 500-medium, 400-regular
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 64,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        displayMedium: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        displaySmall: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w300,
          color: colorScheme.onSurface,
        ),
        //
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w300,
          color: colorScheme.onSurface,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        //
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: colorScheme.onSurface,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface,
        ),
        titleSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
        //
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
          color: colorScheme.onSurface,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface,
        ),
        //
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface,
        ),
        labelMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: colorScheme.onSurface,
        ),
        labelSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: colorScheme.onSurface,
        ),
      ),
      primaryTextTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: colorScheme.onSurface,
        ),
        bodyMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: colorScheme.onSurface,
        ),
        bodySmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface,
        ),
        //
        labelLarge: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w300,
          color: colorScheme.onSurface,
        ),
        labelMedium: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: colorScheme.onSurface,
        ),
        labelSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface,
        ),
        //
        headlineLarge: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface,
        ),
        //
        titleLarge: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface,
        ),
      ),
      colorScheme: colorScheme,
    );
  }
}
