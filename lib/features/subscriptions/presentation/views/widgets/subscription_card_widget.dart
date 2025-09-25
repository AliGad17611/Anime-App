import 'package:anime_app/core/theme/app_assets.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionCardWidget extends StatelessWidget {
  final String type;
  final String price;
  final String period;
  final bool isSelected;
  final VoidCallback? onTap;
  final String? description;

  const SubscriptionCardWidget({
    super.key,
    required this.type,
    required this.price,
    required this.period,
    this.isSelected = false,
    this.onTap,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 100.h,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.primaryText : AppColors.white,
            borderRadius: BorderRadius.circular(20.r),
            border: isSelected
                ? null
                : Border.all(
                    color: AppColors.mediumGray.withValues(alpha: 0.3),
                    width: 1,
                  ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppAssets.videoIconPng),
              horizontalSpace(22),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    type,
                    style: isSelected
                        ? AppTextStyles.font16W700White
                        : AppTextStyles.font16W700PrimaryText,
                  ),
                  verticalSpace(4),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: price,
                          style: isSelected
                              ? AppTextStyles.font14W700White
                              : AppTextStyles.font14W700PrimaryText,
                        ),
                        TextSpan(
                          text: '/$period',
                          style: AppTextStyles.font14W700Accent,
                        ),
                      ],
                    ),
                  ),
                  if (description != null) ...[
                    verticalSpace(4),
                    Text(description!, style: AppTextStyles.font12W700Accent),
                  ],
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 4.w, top: 4.h),
                child: isSelected
                    ? Icon(Icons.check_circle, color: AppColors.primary)
                    : Icon(Icons.circle_outlined, color: AppColors.primaryText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
