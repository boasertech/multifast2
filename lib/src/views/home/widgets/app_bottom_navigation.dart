import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/styles/app_text_style.dart';

class AppBottomNavigation extends StatefulWidget {
  final String moduleName;
  final String iconName;
  const AppBottomNavigation({super.key, required this.moduleName, required this.iconName});

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          children: [
            SizedBox(
              width: 17.w,
              height: 17.h,
              child: Image.asset(widget.iconName)),
            Text(widget.moduleName, style: AppTextStyle.textAlternative),
          ],
        ),
      ),
    );
  }
}
