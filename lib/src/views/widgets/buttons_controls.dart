import 'package:flutter/material.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_text_style.dart';

Widget buildAppButton(BuildContext context, String name,
    {VoidCallback? action, bool isCancel = false, double radiusCircular = 6}) {
  return Expanded(
    child: GestureDetector(
      onTap: action,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 11),
        decoration: isCancel
            ? BoxDecoration(
                border: Border.all(color: AppColors.border),
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              )
            : BoxDecoration(color: AppColors.cls5, borderRadius: BorderRadius.circular(radiusCircular)),
        child: Center(
          child: Text(
            name,
            style: isCancel ? AppTextStyle.cls2Style() : AppTextStyle.clsWhite(),
          ),
        ),
      ),
    ),
  );
}

Widget buildAppButtonWithOutExpanded(BuildContext context, String name,
    {VoidCallback? action, bool isCancel = false, double radiusCircular = 6, isEnabled = true}) {
  return GestureDetector(
    onTap: isEnabled ? action : null,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 11),
      decoration: isCancel
          ? BoxDecoration(
              border: Border.all(color: AppColors.border),
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            )
          : BoxDecoration(color: isEnabled ? AppColors.cls5 : AppColors.cls11, borderRadius: BorderRadius.circular(radiusCircular)),
      child: Center(
        child: Text(
          name,
          style: isCancel ? AppTextStyle.cls2Style() : AppTextStyle.clsWhite(),
        ),
      ),
    ),
  );
}

Widget buildAppButtonRow(BuildContext context, String name1, String name2,
    {VoidCallback? action, bool isCancel = false, double radiusCircular = 6, isEnabled = true}) {
  return GestureDetector(
    onTap: isEnabled ? action : null,
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 11),
      decoration: isCancel
          ? BoxDecoration(
              border: Border.all(color: AppColors.border),
              color: Colors.white,
              borderRadius: BorderRadius.circular(radiusCircular),
            )
          : BoxDecoration(color: isEnabled ? AppColors.cls5 : AppColors.cls11, borderRadius: BorderRadius.circular(radiusCircular)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(name1, style: isCancel ? AppTextStyle.cls2Style() : AppTextStyle.clsWhite()),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Text(name2, style: isCancel ? AppTextStyle.cls2Style() : AppTextStyle.clsWhite()),
          )
        ],
      ),
    ),
  );
}