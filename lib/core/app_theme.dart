import 'package:flutter/material.dart';
import 'package:islami_app_sat_c21/core/app_styles.dart';

import 'app_colors.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    appBarTheme: AppBarThemeData(
      centerTitle: true,
      backgroundColor: AppColors.blackColor,
      iconTheme: IconThemeData(color: AppColors.primaryColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      // backgroundColor: AppColors.primaryColor,
      // type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.whiteColor,
      unselectedItemColor: AppColors.blackColor,
      selectedLabelStyle: AppStyles.bold12White,
    ),
  );
}
