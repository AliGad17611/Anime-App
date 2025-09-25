import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/features/home/presentation/views/home_view.dart';
import 'package:anime_app/features/explore/presentation/views/explore_view.dart';
import 'package:anime_app/features/search/presentation/views/search_view.dart';
import 'package:anime_app/features/subscriptions/presentation/views/subscription_view.dart';
import 'package:anime_app/features/settings/presentation/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
    const SubscriptionView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withValues(alpha: 0.1),
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 8.h,
          ), // Reduced horizontal padding
          child: GNav(
            //ripple color appear when the button is pressed
            rippleColor: AppColors.primary.withValues(alpha: 0.1),
            //hover color appear when the button is hovered
            hoverColor: AppColors.primary.withValues(alpha: 0.1),
            gap: 6.w, // Reduced gap to prevent overflow
            activeColor: AppColors.white,
            iconSize: 22.r, // Slightly smaller icon size
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 12.h,
            ), // Reduced horizontal padding
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: AppColors.primary,
            color: AppColors.mediumGray,
            curve: Curves.easeOutExpo,
            textStyle: AppTextStyles.font14W600White,
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Better distribution

            tabs: [
              GButton(icon: Icons.home_outlined, text: 'Home'),
              GButton(icon: Icons.library_books_outlined, text: 'Explore'),
              GButton(icon: Icons.search_outlined, text: 'Search'),
              GButton(icon: Icons.subscriptions_outlined, text: 'Subscrip'),
              GButton(icon: Icons.settings_outlined, text: 'Settings'),
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
