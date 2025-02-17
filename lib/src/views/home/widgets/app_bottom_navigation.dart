import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/src/views/home/app_bottom_navigation_bar.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_text_style.dart';

class AppBottomNavigation extends StatefulWidget {
  final NavigationBottomBarButton nav;
  final int optionSelected;
  final VoidCallback? onTap;
  final GlobalKey? keyWidget;
  const AppBottomNavigation({super.key, required this.nav, required this.optionSelected, this.onTap, this.keyWidget});

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    final navigation = widget.nav;
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          key: widget.keyWidget,
          children: [
            SizedBox(
                width: 17.w,
                height: 17.h,
                child: widget.optionSelected == navigation.id
                    ? Image.asset(navigation.image, color: AppColors.cls5)
                    : Image.asset(navigation.image)),
            Text(navigation.name, style: AppTextStyle.textAlternative),
          ],
        ),
      ),
    );
  }
}
