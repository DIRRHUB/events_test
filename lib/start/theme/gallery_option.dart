import 'package:flutter/material.dart';

class GalleryOptionTheme {
  static ThemeData darkThemeData(BuildContext context) {
    return themeData(context);
  }

  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      //600 - semibold, 300-light, 500-medium, 400-regular
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 64,
          fontWeight: FontWeight.w600,
        ),
        displayMedium: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w300,
        ),
        //
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w300,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        //
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        //
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w300,
        ),
        bodySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        //
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        labelMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
        ),
        labelSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
      primaryTextTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
        ),
        bodySmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        //
        labelLarge: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w300,
        ),
        labelMedium: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
        ),
        labelSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        //
        headlineLarge: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w500,
        ),
        //
        titleLarge: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
