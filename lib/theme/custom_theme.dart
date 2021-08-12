import 'package:flutter/material.dart';

import 'package:movie_recommendation_app_course/theme/palette.dart';

class CustomTheme {
  static ThemeData darkTheme(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: MaterialColor(
        Palette.red500.value,
        const {
          100: Palette.red100,
          200: Palette.red200,
          300: Palette.red300,
          400: Palette.red400,
          500: Palette.red500,
          600: Palette.red600,
          700: Palette.red700,
          800: Palette.red800,
          900: Palette.red900,
        },
      ),
      accentColor: Palette.red500,
      scaffoldBackgroundColor: Palette.almostBlack,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Palette.almostBlack,
      ),
      textTheme: theme.primaryTextTheme
          .copyWith(
            button: theme.primaryTextTheme.button?.copyWith(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
          .apply(
            displayColor: Colors.white,
          ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: Palette.red500,
        ),
      ),
    );
  }
}
