import 'package:anime_app/core/theme/app_assets.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/widgets/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SubscriptionBackgroundWidget extends StatelessWidget {
  const SubscriptionBackgroundWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      gradient1: AppColors.subscriptionBackgroundGradient1,
      gradient2: AppColors.subscriptionBackgroundGradient2,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(AppAssets.starTop),
          ),
          Positioned(
            top: 180.h,
            right: 0,
            child: SvgPicture.asset(AppAssets.starMiddle),
          ),
          child,
        ],
      ),
    );
  }
}
