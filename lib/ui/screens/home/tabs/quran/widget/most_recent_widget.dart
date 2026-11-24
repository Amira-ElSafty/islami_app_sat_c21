import 'package:flutter/material.dart';
import 'package:islami_app_sat_c21/core/app_assets.dart';
import 'package:islami_app_sat_c21/core/app_colors.dart';
import 'package:islami_app_sat_c21/core/app_size.dart';
import 'package:islami_app_sat_c21/core/app_styles.dart';

class MostRecentWidget extends StatelessWidget {
  const MostRecentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = context.width;
    var height = context.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: height * 0.01,
      children: [
        Text('Most Recently', style: AppStyles.bold16White),
        SizedBox(
          height: height * 0.18,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.04,
                  vertical: height * 0.02,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.primaryColor,
                ),
                child: Row(
                  spacing: width * 0.04,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Al-Anbiya', style: AppStyles.bold24Black),
                        Text('الأنبياء', style: AppStyles.bold24Black),
                        Text('112 verses', style: AppStyles.bold14Black),
                      ],
                    ),
                    Image.asset(AppAssets.mostRecent),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: width * 0.04);
            },
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}
