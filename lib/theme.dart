import 'package:flutter/material.dart';
import 'app_colors.dart';

class ThemeConfig {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.secondaryColor,
    colorScheme: ColorScheme.light(
      primary: AppColors.primaryColor,
      secondary: AppColors.accentColor,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.secondaryColor,
    scaffoldBackgroundColor: AppColors.primaryColor,
    colorScheme: ColorScheme.dark(
      primary: AppColors.secondaryColor,
      secondary: AppColors.accentColor,
    ),
  );
}
