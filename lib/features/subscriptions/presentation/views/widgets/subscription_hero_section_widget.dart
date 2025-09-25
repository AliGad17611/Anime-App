import 'package:anime_app/core/theme/app_assets.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionHeroSectionWidget extends StatelessWidget {
  const SubscriptionHeroSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppAssets.rocketBoyPng,
          width: 220.w,
          height: 200.h,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 42.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Seamless Anime\nExperience, Ad-Free.',
                style: AppTextStyles.font24W700PrimaryText,
                textAlign: TextAlign.center,
              ),
              Text(
                'Enjoy unlimited anime streaming without interruptions.',
                style: AppTextStyles.font14W500MediumGray,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
