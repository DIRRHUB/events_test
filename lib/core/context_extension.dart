import 'package:flutter/material.dart';

extension OneContextExtension on BuildContext {
  ///
  ThemeData get theme => Theme.of(this);

  ///
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  ///
  TextTheme get textTheme => theme.textTheme;
}
