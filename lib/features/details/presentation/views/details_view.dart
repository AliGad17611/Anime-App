import 'package:anime_app/core/theme/app_assets.dart';
import 'package:anime_app/core/theme/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'dart:ui';

import 'package:flutter_svg/flutter_svg.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 540.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppAssets.demonSlayer),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height - 540.h,
                      ),
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.overlayBlue,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 17.0.w),
                              child: Column(
                                children: [
                                  verticalSpace(85),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      TypeContainer(type: 'Dark Fantasy'),
                                      horizontalSpace(10),
                                      TypeContainer(type: 'Action'),
                                      horizontalSpace(10),
                                      TypeContainer(type: 'Adventure'),
                                    ],
                                  ),
                                  verticalSpace(10),
                                  Divider(
                                    color: AppColors.overlayYellow,
                                    thickness: 1,
                                  ),
                                  verticalSpace(5),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      StatisticsRowWidget(
                                        svgIcon: AppAssets.eyeIcon,
                                        record: '2.3M',
                                        unit: 'Views',
                                      ),
                                      StatisticsRowWidget(
                                        svgIcon: AppAssets.clapIcon,
                                        record: '2K',
                                        unit: 'Clap',
                                      ),
                                      StatisticsRowWidget(
                                        svgIcon: AppAssets.movieIcon,
                                        record: '4',
                                        unit: 'Seasons',
                                      ),
                                    ],
                                  ),
                                  verticalSpace(5),
                                  Divider(
                                    color: AppColors.overlayYellow,
                                    thickness: 1,
                                  ),
                                  verticalSpace(5),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(AppAssets.fireIcon),
                                      horizontalSpace(8),
                                      Expanded(
                                        child: Text(
                                          'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                                          style:
                                              AppTextStyles.font14W500LightGray,
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                  verticalSpace(
                                    50,
                                  ), // Add some bottom padding for better UX
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 450.h,
                  left: 95.w,
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
                                  "DEMON",
                                  style: AppTextStyles.font48W400BlackNewRocker
                                      .copyWith(height: 0.85),
                                ),
                                Text(
                                  "SLAYER",
                                  style: AppTextStyles.font36W400BlackNewRocker,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
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
                            Text(
                              'Preview',
                              style: AppTextStyles.font15W600White,
                            ),
                          ],
                        ),
                      ),
                    ),
                    horizontalSpace(20),
                    Expanded(
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
                            Text(
                              'Watch Now',
                              style: AppTextStyles.font15W600White,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TypeContainer extends StatelessWidget {
  const TypeContainer({super.key, required this.type});
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 85.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 11.h),
      decoration: BoxDecoration(
        color: AppColors.overlayYellow,
        borderRadius: BorderRadius.circular(50.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.quarterBlack,
            blurRadius: 4,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Center(child: Text(type, style: AppTextStyles.font13W500White)),
    );
  }
}

/// A reusable widget that displays statistics with an icon, record value, and unit
///
/// This widget creates a row containing:
/// - An SVG icon
/// - A record value (e.g., "2.3M") with Inter font style
/// - A unit description (e.g., "Views") with regular font style
class StatisticsRowWidget extends StatelessWidget {
  const StatisticsRowWidget({
    super.key,
    required this.svgIcon,
    required this.record,
    required this.unit,
  });

  /// The path to the SVG icon asset
  final String svgIcon;

  /// The statistical record value (e.g., "2.3M", "150K", "4.8")
  final String record;

  /// The unit or description for the statistic (e.g., "Views", "Downloads", "Rating")
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(svgIcon),
        horizontalSpace(8),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: record, style: AppTextStyles.font13W400WhiteInter),
              TextSpan(text: ' $unit', style: AppTextStyles.font13W400White),
            ],
          ),
        ),
      ],
    );
  }
}
