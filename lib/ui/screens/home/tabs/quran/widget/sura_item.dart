import 'package:flutter/material.dart';
import 'package:islami_app_sat_c21/core/app_assets.dart';
import 'package:islami_app_sat_c21/core/app_size.dart';
import 'package:islami_app_sat_c21/core/app_styles.dart';
import 'package:islami_app_sat_c21/model/quran_resources.dart';

class SuraItem extends StatelessWidget {
  final int index;

  const SuraItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var width = context.width;
    var height = context.height;
    return Row(
      spacing: width * 0.06,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(AppAssets.vector),
            Text('${index + 1}', style: AppStyles.bold14White),
          ],
        ),
        Column(
          spacing: height * 0.01,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              QuranResources.englishQuranSuraList[index],
              style: AppStyles.bold20White,
            ),
            Text(
              '${QuranResources.ayaNumberList[index]}  Verses',
              style: AppStyles.bold14White,
            ),
          ],
        ),
        Spacer(),
        Text(
          QuranResources.arabicQuranSuraList[index],
          style: AppStyles.bold20White,
        ),
      ],
    );
  }
}
