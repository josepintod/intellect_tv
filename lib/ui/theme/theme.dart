import 'package:flutter/material.dart';
import 'colors.dart';

class MyTheme {
  static ThemeData get ligthTheme {
    return ThemeData(
      primarySwatch: AppColors.createMaterialColor(AppColors.primaryColor),
      colorScheme: AppColors.lightScheme,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Colors.grey.shade500,
        selectedItemColor: AppColors.lightScheme.primary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: const OutlineInputBorder(),
        fillColor: Colors.grey.shade300,
      ),
    );
  }

  // on DarkMode the Swatch parameter is not working
  // https://github.com/flutter/flutter/issues/19089
  static ThemeData get darkTheme {
    return ThemeData(
      primarySwatch: AppColors.createMaterialColor(AppColors.primaryColor),
      colorScheme: AppColors.darkScheme,
      toggleableActiveColor: AppColors.darkScheme.secondary,

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Colors.grey.shade400,
        selectedItemColor: AppColors.lightScheme.primary,
      ),
      // copy from ligthTheme
      inputDecorationTheme: ligthTheme.inputDecorationTheme,
    );
  }
}
