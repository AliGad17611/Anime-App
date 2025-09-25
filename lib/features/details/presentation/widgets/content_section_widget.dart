import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/theme/spacing.dart';
import 'package:anime_app/core/theme/app_assets.dart';
import 'type_container.dart';
import 'statistics_row_widget.dart';

class ContentSectionWidget extends StatelessWidget {
  const ContentSectionWidget({
    super.key,
    required this.genres,
    required this.description,
    required this.viewsCount,
    required this.clapCount,
    required this.seasonsCount,
  });

  final List<String> genres;
  final String description;
  final String viewsCount;
  final String clapCount;
  final String seasonsCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height - 540.h,
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
          child: Container(
            decoration: BoxDecoration(color: AppColors.overlayBlue),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.0.w),
              child: Column(
                children: [
                  verticalSpace(85),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: genres
                        .asMap()
                        .entries
                        .map(
                          (entry) => [
                            TypeContainer(type: entry.value),
                            if (entry.key < genres.length - 1)
                              horizontalSpace(10),
                          ],
                        )
                        .expand((element) => element)
                        .toList(),
                  ),
                  verticalSpace(10),
                  Divider(color: AppColors.overlayYellow, thickness: 1),
                  verticalSpace(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatisticsRowWidget(
                        svgIcon: AppAssets.eyeIcon,
                        record: viewsCount,
                        unit: 'Views',
                      ),
                      StatisticsRowWidget(
                        svgIcon: AppAssets.clapIcon,
                        record: clapCount,
                        unit: 'Clap',
                      ),
                      StatisticsRowWidget(
                        svgIcon: AppAssets.movieIcon,
                        record: seasonsCount,
                        unit: 'Seasons',
                      ),
                    ],
                  ),
                  verticalSpace(5),
                  Divider(color: AppColors.overlayYellow, thickness: 1),
                  verticalSpace(5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(AppAssets.fireIcon),
                      horizontalSpace(8),
                      Expanded(
                        child: Text(
                          description,
                          style: AppTextStyles.font14W500LightGray,
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
