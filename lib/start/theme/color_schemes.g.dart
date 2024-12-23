import 'package:flutter/material.dart';

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  // Primary color (відповідає відтінкам металу з вашого фото)
  primary: Color(0xFFE0E0E0), // Темно-сірий металевий
  onPrimary: Color(0xFF525252), // Світло-сірий для контрастного тексту
  primaryContainer: Color(0xFF404040), // Глибший сірий для кнопок/контейнерів
  onPrimaryContainer: Color(0xFFF5F5F5), // Білий текст на темних елементах

  // Secondary color (акценти, наприклад, для кнопок)
  secondary: Color(0xFFFD9400), // Помаранчевий акцент
  onSecondary: Color(0xFF1A1A1A), // Темний текст/елементи на помаранчевому фоні
  secondaryContainer: Color(0xFFE67E00), // Темніший помаранчевий
  onSecondaryContainer: Color(0xFFFFFFFF), // Білий текст на вторинному фоні

  // Tertiary color (додаткові відтінки для іконок або менших елементів)
  tertiary: Color(0xFFF5F5F5), // Нейтральний сірий для дрібних деталей
  onTertiary: Color(0xFFF5F5F5), // Білий текст на сірому

  // Surface colors (карти, контейнери, фон)
  surface: Color(0xFF202020), // Основний фон контейнерів
  onSurface: Color(0xFFC2C2C2), // Текст на поверхнях
  inverseSurface: Color(0xFF303030), // Інверсний фон для світлих елементів

  // Background colors
  background: Color(0xFF181818), // Загальний темний фон додатка
  onBackground: Color(0xFFD9D9D9), // Текст на фоні

  // Error colors (помилки, попередження)
  error: Color(0xFFCF6679), // Червоний для помилок
  errorContainer: Color(0xFF93000A), // Темно-червоний фон для попереджень
  onError: Color(0xFFFFFFFF), // Білий текст на помилках
  onErrorContainer: Color(0xFFFFDAD6), // Світло-червоний текст/фон

  // Borders and outlines
  outline: Color(0xFF494949), // Сірий для меж і контурів
  surfaceVariant: Color(0xFF383838), // Варіант для вторинних поверхонь
  onSurfaceVariant: Color(0xFFBEC9C5), // Світлий текст на вторинних поверхнях

  // Other colors
  inversePrimary: Color(0xFF9E9E9E), // Світліший варіант основного кольору
  shadow: Color(0xFF000000), // Чорний для тіней
  outlineVariant: Color(0xFF3F4946), // Варіант для контурів
  scrim: Color(0xFF151616), // Напівпрозорий фон
);
