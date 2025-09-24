import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/theme/spacing.dart';
import 'package:anime_app/features/home/domain/entity/anime_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimeCardWidget extends StatelessWidget {
  final AnimeEntity anime;
  final VoidCallback? onTap;

  const AnimeCardWidget({super.key, required this.anime, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                height: 250.h,
                width: 184.w,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                    image: AssetImage(anime.animeImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 12.h,
                left: 120.w,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        size: 12.sp,
                        color: AppColors.primary,
                      ),
                      horizontalSpace(2),
                      Text(
                        "${anime.animeRating}",
                        style: AppTextStyles.font12W600Dark,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          verticalSpace(8),
          Text(anime.animeName, style: AppTextStyles.font14W700PrimaryText),
          Text(anime.animeType, style: AppTextStyles.font12W500Secondary),
        ],
      ),
    );
  }
}
