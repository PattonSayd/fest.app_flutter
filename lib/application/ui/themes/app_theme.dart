import 'package:flutter/material.dart';

abstract class AppTheme {
  static final dark = ThemeData(
    // splashColor: Colors.transparent,
    // highlightColor: Colors.transparent,
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Color(0xFF00BD13),
      unselectedItemColor: Color(0xFF52525E),
    ),
  );
}
