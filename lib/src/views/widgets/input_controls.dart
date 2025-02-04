import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_text_style.dart';

class AppInputCheck {
  final int index;
  final String name;
  bool isSelected;
  bool isStatic;

  AppInputCheck(this.index, this.name, {this.isSelected = false, this.isStatic = false});
}

Widget buildAppInputCheck(BuildContext context, AppInputCheck appInputCheck) {
  return Padding(
    padding: EdgeInsets.zero,
    child: Row(
      children: [
        Container(
          width: 15.r,
          height: 15.r,
          decoration: BoxDecoration(
            color: appInputCheck.isStatic ? AppColors.cls2 : appInputCheck.isSelected ? AppColors.cls5_1 : Colors.white,
            borderRadius: BorderRadius.circular(4),
            border: appInputCheck.isSelected ? null : Border.all(color: AppColors.cls9)
          ),
          child: Icon(Icons.check, color: Colors.white, size: 12.r),
        ),
        SizedBox(width: 12),
        Expanded(child: Text(appInputCheck.name, style: AppTextStyle.cls10Style(), overflow: TextOverflow.ellipsis))
      ],
    ),
  );
}

Widget buildAppInputCheckWithOutExpanded(BuildContext context, AppInputCheck appInputCheck) {
  return Padding(
    padding: EdgeInsets.zero,
    child: Row(
      children: [
        Container(
          width: 15.r,
          height: 15.r,
          decoration: BoxDecoration(
            color: appInputCheck.isStatic ? AppColors.cls2 : appInputCheck.isSelected ? AppColors.cls5_1 : Colors.white,
            borderRadius: BorderRadius.circular(4),
            border: appInputCheck.isSelected ? null : Border.all(color: AppColors.cls9)
          ),
          child: Icon(Icons.check, color: Colors.white, size: 12.r),
        ),
        SizedBox(width: 12),
        Text(appInputCheck.name, style: AppTextStyle.cls10Style(), overflow: TextOverflow.ellipsis)
      ],
    ),
  );
}
