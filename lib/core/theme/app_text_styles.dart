import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  // 12 px
  static TextStyle font12W400Gray = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.grayText,
  );

  static TextStyle font12W500Secondary = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.secondaryText,
  );

  static TextStyle font12W600Dark = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.darkBackground,
  );

  static TextStyle font12W700Accent = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.accentText,
  );

  // 13 px
  static TextStyle font13W400White = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );

  static TextStyle font13W500White = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static TextStyle font13W400WhiteInter = GoogleFonts.inter(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
  );

  // 14 px
  static TextStyle font14W700Primary = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );

  static TextStyle font14W700PrimaryText = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryText,
  );

  static TextStyle font14W700White = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static TextStyle font14W600White = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static TextStyle font14W600Gray = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.grayText,
  );

  static TextStyle font14W500LightGray = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.lightGrayText,
  );

  static TextStyle font14W500MediumGray = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.mediumGray,
  );

  // 15 px
  static TextStyle font15W600White = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  // 16 px
  static TextStyle font16W600PrimaryText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryText,
  );

  static TextStyle font16W700White = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static TextStyle font16W700PrimaryText = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryText,
  );

  static TextStyle font16W700Accent = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.accentText,
  );

  // 22 px
  static TextStyle font22W700PrimaryText = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryText,
  );

  // 24 px
  static TextStyle font24W700PrimaryText = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryText,
  );

  static TextStyle font24W700Black = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.blackText,
  );

  // 48 px
  static TextStyle font48W400BlackNewRocker = GoogleFonts.newRocker(
    fontSize: 48.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.blackText,
  );
}
