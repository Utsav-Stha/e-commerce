import 'package:flutter/material.dart';

class AppThemes {
  ///By setting the primarySwatch,
  /// Flutter automatically generates different shades of the primary color
  /// for various components in the theme, ensuring a consistent color
  /// scheme across your app.For example, if you set the primarySwatch to
  /// Colors.blue,
  /// Flutter will use different shades of blue for the primary color,
  /// and its lighter and darker variants.

  // Light Theme
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    primarySwatch: Colors.amber,
    primaryColor: Colors.red,
    brightness: Brightness.light,
    // scaffoldBackgroundColor: null,
    cardColor: null,
    focusColor: null,
    splashColor: null,
    fontFamily: 'Roboto',
    appBarTheme: const AppBarTheme(
      elevation: 1,
      backgroundColor: Color.fromRGBO(13, 27, 42, 1),
      iconTheme: IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
      actionsIconTheme: IconThemeData(color: Color.fromRGBO(255, 255, 255, 1)),
      titleTextStyle: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        letterSpacing: 6.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(100.0),
        ),
      ),
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(224, 225, 221, 1),
    textTheme: const TextTheme(
      headlineSmall: TextStyle(color: Colors.black),
      headlineMedium: TextStyle(color: Colors.black54),
      headlineLarge: TextStyle(color: Colors.black54),
      titleSmall: TextStyle(color: Colors.black54),
      titleMedium: TextStyle(color: Colors.black54),
      titleLarge: TextStyle(color: Colors.black54),
      bodySmall: TextStyle(color: Colors.black54),
      bodyMedium: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(color: Colors.black54),
    ),
  );

  // Dark Theme
  static final ThemeData dark = ThemeData(
      useMaterial3: true,
      // primarySwatch: AppColors.primaryColor,
      primaryColor: Colors.red,
      brightness: Brightness.dark,
      // scaffoldBackgroundColor: null,
      cardColor: null,
      focusColor: null,
      splashColor: null,
      fontFamily: 'Roboto',
      appBarTheme: const AppBarTheme(
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black26),
      ),
      textTheme: const TextTheme(
        headlineSmall: TextStyle(color: Colors.white),
        headlineMedium: TextStyle(color: Colors.white54),
        headlineLarge: TextStyle(color: Colors.white54),
        titleSmall: TextStyle(color: Colors.white54),
        titleMedium: TextStyle(color: Colors.white54),
        titleLarge: TextStyle(color: Colors.white54),
        bodySmall: TextStyle(color: Colors.white54),
        bodyMedium: TextStyle(color: Colors.white54),
        bodyLarge: TextStyle(color: Colors.white54),
      ));
}
