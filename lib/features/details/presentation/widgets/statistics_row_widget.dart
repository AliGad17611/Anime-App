import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:anime_app/core/theme/spacing.dart';
import 'package:anime_app/core/theme/app_text_styles.dart';

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
