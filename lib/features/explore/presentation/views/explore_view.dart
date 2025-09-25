import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

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
              Text('Explore', style: AppTextStyles.font22W700PrimaryText),
              verticalSpace(24),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.library_books_outlined,
                        size: 80.r,
                        color: AppColors.primary,
                      ),
                      verticalSpace(16),
                      Text(
                        'Explore Screen',
                        style: AppTextStyles.font16W700PrimaryText,
                      ),
                      verticalSpace(8),
                      Text(
                        'Discover new anime series and explore different categories',
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
