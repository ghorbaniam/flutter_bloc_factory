import 'package:flutter/material.dart';

class AppColorScheme {
  ColorScheme getDefaultColorScheme(){
    return _lightColorScheme;
  }

  final ColorScheme _lightColorScheme = const ColorScheme.light().copyWith(
    primary: const Color(0xFF11CC88),
    primaryVariant: const Color(0xFFffc107),
    secondary: const Color(0xFF8A8A8A),
    secondaryVariant: const Color(0xFFAAAAAA),
    surface: const Color(0xffffffff),
    background: const Color(0xFFCECECE),
    error: const Color(0xFFdc3545),
    onSecondary: const Color(0xFFBEBEBE),
    onSurface: const Color(0xFF2299FF),
    onBackground: const Color(0xFF282F44),
    onError: const Color(0xFFE0E0E0),
  );
}
