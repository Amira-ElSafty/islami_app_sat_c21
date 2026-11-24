import 'package:flutter/material.dart';
import 'package:islami_app_sat_c21/core/app_assets.dart';
import 'package:islami_app_sat_c21/core/app_colors.dart';
import 'package:islami_app_sat_c21/core/app_size.dart';
import 'package:islami_app_sat_c21/ui/screens/home/tabs/hadeth/hadeth_tab.dart';
import 'package:islami_app_sat_c21/ui/screens/home/tabs/quran/quran_tab.dart';
import 'package:islami_app_sat_c21/ui/screens/home/tabs/radio/radio_tab.dart';
import 'package:islami_app_sat_c21/ui/screens/home/tabs/sebha/sebha_tab.dart';
import 'package:islami_app_sat_c21/ui/screens/home/tabs/time/time_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabsList = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];
  List<String> backgroundImagesList = [
    AppAssets.quranBg,
    AppAssets.hadethBg,
    AppAssets.sebhaBg,
    AppAssets.radioBg,
    AppAssets.timeBg,
  ];

  // Map<int,String> imageList = {
  //   0 : AppAssets.quranBg,
  //   1 : AppAssets.hadethBg ,
  //   2 : AppAssets.sebhaBg,
  //   3 : AppAssets.radioBg,
  //   4 : AppAssets.timeBg
  // };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.transparentColor,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: AppColors.primaryColor),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            _builtBottomNavBarItem(
              icon: AppAssets.iconQuran,
              label: 'Quran',
              index: 0,
            ),
            _builtBottomNavBarItem(
              icon: AppAssets.iconHadeth,
              label: 'Hadeth',
              index: 1,
            ),
            _builtBottomNavBarItem(
              icon: AppAssets.iconSebha,
              label: 'Sebha',
              index: 2,
            ),
            _builtBottomNavBarItem(
              icon: AppAssets.iconRadio,
              label: 'Radio',
              index: 3,
            ),
            _builtBottomNavBarItem(
              icon: AppAssets.iconTime,
              label: 'Time',
              index: 4,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            backgroundImagesList[selectedIndex],
            //getBackgroundImage()
            // imageList[selectedIndex]!
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: Column(
              spacing: context.height * 0.02,
              children: [
                Image.asset(AppAssets.logo),
                Expanded(child: tabsList[selectedIndex]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem _builtBottomNavBarItem({
    required String icon,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: selectedIndex == index
          ? Container(
              padding: EdgeInsets.symmetric(
                horizontal: context.width * 0.06,
                vertical: context.height * 0.01,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(66),
                color: AppColors.blackBgColor,
              ),
              child: ImageIcon(AssetImage(icon)),
            )
          : ImageIcon(AssetImage(icon)),
      label: label,
    );
  }

  String getBackgroundImage() {
    switch (selectedIndex) {
      case 0:
        return AppAssets.quranBg;
      case 1:
        return AppAssets.hadethBg;
      case 2:
        return AppAssets.sebhaBg;
      case 3:
        return AppAssets.radioBg;
      case 4:
        return AppAssets.timeBg;
      default:
        return AppAssets.quranBg;
    }
  }
}
