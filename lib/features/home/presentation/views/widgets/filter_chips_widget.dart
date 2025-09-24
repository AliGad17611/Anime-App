import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/theme/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterChipsWidget extends StatelessWidget {
  final List<String> filterOptions;
  final int selectedIndex;
  final Function(int)? onFilterSelected;

  const FilterChipsWidget({
    super.key,
    required this.filterOptions,
    this.selectedIndex = 0,
    this.onFilterSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.h,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 16.w, right: 8.w),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => onFilterSelected?.call(index),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: index != selectedIndex
                  ? AppColors.white
                  : AppColors.primary,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Center(
              child: Text(
                filterOptions[index],
                style: index != selectedIndex
                    ? AppTextStyles.font14W700Primary
                    : AppTextStyles.font14W700White,
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => horizontalSpace(4),
        itemCount: filterOptions.length,
      ),
    );
  }
}
