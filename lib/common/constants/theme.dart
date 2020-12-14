import 'package:flutter/material.dart';

final kenyaItHardwareTheme = ThemeData(
  colorScheme: colorScheme,
  primaryColor: colorScheme.primary,
  accentColor: Color(0xFFea8a01),
  backgroundColor: colorScheme.background,
  scaffoldBackgroundColor: colorScheme.background,
);

final ColorScheme colorScheme = ColorScheme.light(
    primary: Color(0xFFED622C),
    primaryVariant: Color(0xFFDA4C15),
    secondary: Color(0xFFea8a01),
    secondaryVariant: Color(0xFFea8a01),
    surface: Color(0xFFFFFFFF),
    background: Color(0xFFFFFFFF),
    error: Color(0xFF000000),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFFFFFFFF),
    onSurface: Color(0xFF000000),
    onBackground: Color(0xFF000000),
    onError: Color(0xFFF13A34),
    brightness: Brightness.light);
