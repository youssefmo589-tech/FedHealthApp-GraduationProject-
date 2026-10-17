import 'package:flutter/material.dart';

import 'AppColors.dart';

class AppThemeManager {
  static final ThemeData lighttheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        fontFamily: "Inter",
      ),
      titleMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: "Inter",
      ),
      titleSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontFamily: "Inter",
      ),
    ),
  );

  // static final ThemeData darktheme = ThemeData(
  //   // scaffoldBackgroundColor: AppColors.white ,
  // );
}
