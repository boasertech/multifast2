import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/styles/app_text_style.dart';

class AppBottomRowWidget extends StatelessWidget {
  const AppBottomRowWidget({super.key, required this.moduleName, required this.iconName});
  final String moduleName;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Row(
        children: [
          SizedBox(width: 10.w, height: 10.w, child: Image.asset(iconName)),
          SizedBox(width: 5.w),
          Text(moduleName, style: AppTextStyle.textAlternative),
        ],
      ),
    );
  }
}
