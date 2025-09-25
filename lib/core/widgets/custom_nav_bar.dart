import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavBar extends StatelessWidget {
  final List<CustomNavBarItem> tabs;
  final int selectedIndex;
  final Function(int) onTabChange;
  final Color? rippleColor;
  final Color? hoverColor;
  final double gap;
  final Color activeColor;
  final double iconSize;
  final EdgeInsets padding;
  final Duration duration;
  final Color tabBackgroundColor;
  final Color color;
  final Curve curve;
  final TextStyle textStyle;
  final MainAxisAlignment mainAxisAlignment;

  const CustomNavBar({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTabChange,
    this.rippleColor,
    this.hoverColor,
    this.gap = 2.0,
    this.activeColor = Colors.white,
    this.iconSize = 20.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    this.duration = const Duration(milliseconds: 400),
    this.tabBackgroundColor = Colors.blue,
    this.color = Colors.grey,
    this.curve = Curves.easeOutExpo,
    this.textStyle = const TextStyle(color: Colors.white, fontSize: 14),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: tabs.asMap().entries.map((entry) {
        int index = entry.key;
        CustomNavBarItem item = entry.value;
        bool isSelected = index == selectedIndex;

        return GestureDetector(
          onTap: () => onTabChange(index),
          child: AnimatedContainer(
            duration: duration,
            curve: curve,
            padding: isSelected
                ? padding
                : EdgeInsets.symmetric(
                    horizontal: padding.horizontal / 6,
                    vertical: padding.vertical,
                  ),
            decoration: BoxDecoration(
              color: isSelected ? tabBackgroundColor : Colors.transparent,
              borderRadius: BorderRadius.circular(50.r),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  item.imagePath,
                  width: iconSize,
                  height: iconSize,
                  colorFilter: ColorFilter.mode(
                    isSelected ? activeColor : color,
                    BlendMode.srcIn,
                  ),
                ),
                if (isSelected && item.text.isNotEmpty) ...[
                  SizedBox(width: gap),
                  Flexible(
                    child: Text(
                      item.text,
                      style: textStyle,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

class CustomNavBarItem {
  final String imagePath;
  final String text;

  const CustomNavBarItem({required this.imagePath, required this.text});
}
