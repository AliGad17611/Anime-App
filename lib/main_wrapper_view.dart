import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/theme/app_assets.dart';
import 'package:anime_app/core/widgets/custom_nav_bar.dart';
import 'package:anime_app/features/home/presentation/views/home_view.dart';
import 'package:anime_app/features/explore/presentation/views/explore_view.dart';
import 'package:anime_app/features/language/presentation/views/language_view.dart';
import 'package:anime_app/features/search/presentation/views/search_view.dart';
import 'package:anime_app/features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainWrapperView extends StatefulWidget {
  const MainWrapperView({super.key});

  @override
  State<MainWrapperView> createState() => _MainWrapperViewState();
}

class _MainWrapperViewState extends State<MainWrapperView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const ExploreView(),
    const SearchView(),
    const LanguageView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: AppColors.bottomNavBar),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2.w,
            vertical: 8.h,
          ), // Ultra minimal horizontal padding for closest items
          child: CustomNavBar(
            //ripple color appear when the button is pressed
            rippleColor: AppColors.primary.withValues(alpha: 0.1),
            //hover color appear when the button is hovered
            hoverColor: AppColors.primary.withValues(alpha: 0.1),
            gap: 4.w, // Gap between icon and text
            activeColor: AppColors.white,
            iconSize: 20.r, // Icon size for horizontal layout
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
              vertical: 10.h,
            ), // Selected item padding (unselected will be 1/3 of horizontal)
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: AppColors.primary,
            color: AppColors.mediumGray,
            curve: Curves.easeOutExpo,
            textStyle: AppTextStyles.font12W600Dark.copyWith(
              color: AppColors.white,
            ),
            mainAxisAlignment:
                MainAxisAlignment.spaceAround, // Tighter distribution

            tabs: [
              CustomNavBarItem(imagePath: AppAssets.home, text: 'Home'),
              CustomNavBarItem(imagePath: AppAssets.library, text: 'Explore'),
              CustomNavBarItem(imagePath: AppAssets.search, text: 'Search'),
              CustomNavBarItem(imagePath: AppAssets.language, text: 'Language'),
              CustomNavBarItem(imagePath: AppAssets.settings, text: 'Settings'),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
