import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeroImageWidget extends StatelessWidget {
  const HeroImageWidget({super.key, required this.imagePath, this.height});

  final String imagePath;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 540.h,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
    );
  }
}
