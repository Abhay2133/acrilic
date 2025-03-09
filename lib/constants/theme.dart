import 'package:flutter/material.dart';

class AppTheme {
  final AbstractTheme theme;
  AppTheme(this.theme);

  factory AppTheme.fromString(String theme) {
    bool isDark = theme == "dark";
    if(theme == "system") {
      isDark = WidgetsBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;
    }
    return AppTheme(isDark ? DarkTheme() : LightTheme());
  }

  ThemeData get themeData => ThemeData(
    brightness: theme.brightness,
    primaryColor: theme.primaryColor,
    scaffoldBackgroundColor: theme.backgroundColor,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: theme.textColor),
      bodyMedium: TextStyle(color: theme.textColor),
    ),
  );
}

// Abstract Parent Class
abstract class AbstractTheme {
  final Color primaryColor;
  final Color backgroundColor;
  final Color textColor;
  final Brightness brightness;

  const AbstractTheme({
    required this.brightness,
    required this.primaryColor,
    required this.backgroundColor,
    required this.textColor,
  });
}

// Dark Theme
class DarkTheme extends AbstractTheme {
  const DarkTheme()
    : super(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF001233),
        backgroundColor: const Color(0xFF001233),
        textColor: const Color(0xFFCCCCCC),
      );
}

// Light Theme
class LightTheme extends AbstractTheme {
  const LightTheme()
    : super(
        brightness: Brightness.light,
        primaryColor: const Color(0xFFFFFFFF),
        backgroundColor: const Color(0xFFF0F0F0),
        textColor: const Color(0xFF000000),
      );
}
