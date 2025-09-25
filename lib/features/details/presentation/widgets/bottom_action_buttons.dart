import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/theme/spacing.dart';
import 'package:anime_app/core/theme/app_assets.dart';

class BottomActionButtons extends StatelessWidget {
  const BottomActionButtons({super.key, this.onPreviewTap, this.onWatchNowTap});

  final VoidCallback? onPreviewTap;
  final VoidCallback? onWatchNowTap;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 70.h,
        width: double.infinity,
        color: AppColors.bottomBar,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: onPreviewTap,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.bottomBarPrimary,
                      borderRadius: BorderRadius.circular(37.r),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(AppAssets.playIcon),
                        horizontalSpace(10),
                        Text('Preview', style: AppTextStyles.font15W600White),
                      ],
                    ),
                  ),
                ),
              ),
              horizontalSpace(20),
              Expanded(
                child: GestureDetector(
                  onTap: onWatchNowTap,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 10.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.bottomBarPrimary2,
                      borderRadius: BorderRadius.circular(37.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          AppAssets.eyeIcon,
                          colorFilter: ColorFilter.mode(
                            AppColors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                        horizontalSpace(10),
                        Text('Watch Now', style: AppTextStyles.font15W600White),
                      ],
                    ),
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
