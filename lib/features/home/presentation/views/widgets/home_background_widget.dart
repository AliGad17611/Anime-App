import 'package:anime_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBackgroundWidget extends StatelessWidget {
  final Widget child;

  const HomeBackgroundWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.homeBackgroundGradient1,
            AppColors.homeBackgroundGradient2,
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: -(148.61.h),
            left: 120.39.w,
            child: Transform.rotate(
              angle: -(8 * 3.14 / 180).r,
              child: Icon(Icons.star, size: 480.sp, color: AppColors.starColor),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
