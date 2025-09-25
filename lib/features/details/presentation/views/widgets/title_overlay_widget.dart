import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/theme/app_assets.dart';

class TitleOverlayWidget extends StatelessWidget {
  const TitleOverlayWidget({
    super.key,
    required this.title1,
    required this.title2,
    this.top,
    this.left,
  });

  final String title1;
  final String title2;
  final double? top;
  final double? left;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top ?? 450.h,
      left: left ?? 95.w,
      child: SizedBox(
        height: 170.h,
        width: 180.w,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // White circle background (bottom layer)
            Positioned(
              top: 10.h,
              left: 0,
              child: Container(
                height: 150.h,
                width: 180.w,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            // Ellipse SVG (middle layer - above white circle)
            Positioned(
              top: 2,
              right: -10,
              child: SvgPicture.asset(
                AppAssets.customEllipse,
                width: 180.w,
                height: 170.h,
                fit: BoxFit.contain,
              ),
            ),
            // Text content (top layer - above ellipse)
            Positioned(
              top: 10.h,
              left: 0,
              child: SizedBox(
                height: 150.h,
                width: 180.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title1,
                      style: AppTextStyles.font48W400BlackNewRocker.copyWith(
                        height: 0.85,
                      ),
                    ),
                    Text(title2, style: AppTextStyles.font36W400BlackNewRocker),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
