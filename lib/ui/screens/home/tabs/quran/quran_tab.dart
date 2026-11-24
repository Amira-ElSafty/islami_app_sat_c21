import 'package:flutter/material.dart';
import 'package:islami_app_sat_c21/core/app_size.dart';
import 'package:islami_app_sat_c21/ui/screens/home/tabs/quran/widget/most_recent_widget.dart';
import 'package:islami_app_sat_c21/ui/screens/home/tabs/quran/widget/search_widget.dart';
import 'package:islami_app_sat_c21/ui/screens/home/tabs/quran/widget/sura_list_widget.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    var width = context.width;
    var height = context.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      child: SingleChildScrollView(
        child: Column(
          spacing: height * 0.02,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [SearchWidget(), MostRecentWidget(), SuraListWidget()],
        ),
      ),
    );
  }
}
