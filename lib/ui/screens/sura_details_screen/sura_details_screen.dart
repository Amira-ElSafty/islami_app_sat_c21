import 'package:flutter/material.dart';
import 'package:islami_app_sat_c21/core/app_assets.dart';
import 'package:islami_app_sat_c21/core/app_colors.dart';
import 'package:islami_app_sat_c21/core/app_size.dart';
import 'package:islami_app_sat_c21/core/app_styles.dart';
import 'package:islami_app_sat_c21/model/quran_resources.dart';

class SuraDetailsScreen extends StatelessWidget {
  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)?.settings.arguments as int;
    var width = context.width;
    var height = context.height;
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        title: Text(
          QuranResources.englishQuranSuraList[index],
          style: AppStyles.bold20Primary,
        ),
      ),
      body: Column(
        spacing: height * 0.02,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppAssets.leftCorner),
                    Image.asset(AppAssets.rightCorner),
                  ],
                ),
              ),
              Text(
                QuranResources.arabicQuranSuraList[index],
                style: AppStyles.bold24Primary,
              ),
            ],
          ),
          Expanded(child: Placeholder()),
          Image.asset(AppAssets.mosqueImage),
        ],
      ),
    );
  }
}
