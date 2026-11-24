import 'package:flutter/material.dart';
import 'package:islami_app_sat_c21/core/app_colors.dart';
import 'package:islami_app_sat_c21/core/app_routes.dart';
import 'package:islami_app_sat_c21/core/app_size.dart';
import 'package:islami_app_sat_c21/core/app_styles.dart';
import 'package:islami_app_sat_c21/model/quran_resources.dart';
import 'package:islami_app_sat_c21/ui/screens/home/tabs/quran/widget/sura_item.dart';

class SuraListWidget extends StatelessWidget {
  const SuraListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = context.width;
    var height = context.height;
    return Column(
      spacing: height * 0.01,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sura List', style: AppStyles.bold16White),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                //todo: navigate to sura details screen
                Navigator.of(
                  context,
                ).pushNamed(AppRoutes.suraDetails1RouteName, arguments: index);
              },
              child: SuraItem(index: index),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              color: AppColors.whiteColor,
              thickness: 2,
              height: height * 0.04,
              indent: width * 0.06,
              endIndent: width * 0.06,
            );
          },
          itemCount: QuranResources.ayaNumberList.length,
        ),
      ],
    );
  }
}
