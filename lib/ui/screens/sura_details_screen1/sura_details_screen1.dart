import 'package:flutter/material.dart';
import 'package:islami_app_sat_c21/core/app_assets.dart';
import 'package:islami_app_sat_c21/core/app_colors.dart';
import 'package:islami_app_sat_c21/core/app_size.dart';
import 'package:islami_app_sat_c21/core/app_styles.dart';
import 'package:islami_app_sat_c21/model/quran_resources.dart';

class SuraDetailsScreen1 extends StatelessWidget {
  const SuraDetailsScreen1({super.key});

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.detailsBg)),
        ),
        child: Column(
          spacing: height * 0.06,
          children: [
            Text(
              QuranResources.arabicQuranSuraList[index],
              style: AppStyles.bold24Primary,
            ),
            Expanded(child: Placeholder()),
            SizedBox(height: height * 0.06),
          ],
        ),
      ),
    );
  }
}
