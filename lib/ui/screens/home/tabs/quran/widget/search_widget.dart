import 'package:flutter/material.dart';
import 'package:islami_app_sat_c21/core/app_assets.dart';
import 'package:islami_app_sat_c21/core/app_colors.dart';
import 'package:islami_app_sat_c21/core/app_styles.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppStyles.bold20White,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        enabledBorder: _builtDecorationBorder(),
        focusedBorder: _builtDecorationBorder(),
        hintText: 'Sura Name',
        hintStyle: AppStyles.bold16White,
        prefixIcon: Image.asset(AppAssets.iconSearch),
      ),
    );
  }

  OutlineInputBorder _builtDecorationBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(width: 2, color: AppColors.primaryColor),
    );
  }
}
