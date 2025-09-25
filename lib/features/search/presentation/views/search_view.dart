import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(23),
              Text('Search Anime', style: AppTextStyles.font22W700PrimaryText),
              verticalSpace(24),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search_outlined,
                        size: 80.r,
                        color: AppColors.primary,
                      ),
                      verticalSpace(16),
                      Text(
                        'Search Screen',
                        style: AppTextStyles.font16W700PrimaryText,
                      ),
                      verticalSpace(8),
                      Text(
                        'Search for your favorite anime series and characters',
                        style: AppTextStyles.font14W500MediumGray,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
