import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppThemeData {
  //light
  static final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.lightBackgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.PrimaryColor,
        elevation: 0,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        unselectedItemColor: AppColors.greyColor,
        selectedItemColor: AppColors.PrimaryColor,
        selectedLabelStyle: TextStyle(color: AppColors.PrimaryColor),
        showUnselectedLabels: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
        //app title
        titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: AppColors.whiteColor),
        bodyLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: AppColors.blackColor),
        bodyMedium: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: AppColors.blackColor),
      ));
}
