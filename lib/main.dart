import 'package:flutter/material.dart';
import 'package:islami_app_sat_c21/core/app_colors.dart';
import 'package:islami_app_sat_c21/core/app_routes.dart';
import 'package:islami_app_sat_c21/core/app_styles.dart';
import 'package:islami_app_sat_c21/core/app_theme.dart';
import 'package:islami_app_sat_c21/ui/screens/home/home_screen.dart';
import 'package:islami_app_sat_c21/ui/screens/sura_details_screen/sura_details_screen.dart';
import 'package:islami_app_sat_c21/ui/screens/sura_details_screen1/sura_details_screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeRouteName,
      routes: {
        AppRoutes.homeRouteName: (context) => HomeScreen(),
        AppRoutes.suraDetailsRouteName: (context) => SuraDetailsScreen(),
        AppRoutes.suraDetails1RouteName: (context) => SuraDetailsScreen1(),
      },
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
