import 'package:flutter/material.dart';


class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ), // Equivalent to headline5
      bodyLarge: TextStyle(
        fontSize: 16.0,
        color: Colors.black87,
      ), // Equivalent to bodyText1
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ), // Equivalent to headline5
      bodyLarge: TextStyle(
        fontSize: 16.0,
        color: Colors.white70,
      ), // Equivalent to bodyText1
    ),
  );
}
