import 'package:anime_app/core/theme/app_colors.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';
import 'package:anime_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionHeaderWidget extends StatelessWidget {
  final VoidCallback? onCloseTap;

  const SubscriptionHeaderWidget({super.key, this.onCloseTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Text('Upgrade Plan', style: AppTextStyles.font22W700PrimaryText),
        horizontalSpace(66),
        InkWell(
          onTap: onCloseTap ?? () => Navigator.pop(context),
          child: CircleAvatar(
            radius: 14.r,
            backgroundColor: AppColors.white,
            child: Icon(Icons.close, color: AppColors.primaryText),
          ),
        ),
        horizontalSpace(35),
      ],
    );
  }
}
