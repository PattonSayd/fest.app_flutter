import 'package:flutter/material.dart';
import 'package:flutter_fest/application/ui/themes/app_colors.dart';

abstract class AppTheme {
  static final dark = ThemeData(
    splashColor: AppColors.transparent,
    highlightColor: AppColors.transparent,
    primarySwatch: Colors.blueGrey,
    scaffoldBackgroundColor: AppColors.darkBackground,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: AppColors.green,
      unselectedItemColor: AppColors.darkText,
    ),
  );
}
