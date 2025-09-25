import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';

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
