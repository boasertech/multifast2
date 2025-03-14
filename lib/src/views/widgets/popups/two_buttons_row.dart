import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

import 'two_butttons_column.dart';

class TwoButtonsRow extends StatelessWidget {
  final String title;
  final String subtitle;
  final ButtonModel buttonOk;
  final ButtonModel buttonCancel;
  const TwoButtonsRow(
      {super.key, required this.title, required this.subtitle, required this.buttonOk, required this.buttonCancel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 277.w,
      height: 184.h,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8.r)),
      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 4, bottom: 4),
                  child: Image.asset(AppIcons.cancel, scale: 1.2),
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            title,
            style: AppTextStyle.cls2Style(fontSize: 15.w),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h),
          Text(
            subtitle,
            style: AppTextStyle.cls10Style(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 35.h,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.cls5,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.r)),
                    ),
                    onPressed: buttonOk.function,
                    child: Text(buttonOk.name, style: AppTextStyle.cls2Style(color: Colors.white, fontSize: 14.w)),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: SizedBox(
                  height: 35.h,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      side: BorderSide(color: const Color.fromARGB(26, 14, 13, 13)),
                    ),
                    onPressed: buttonCancel.function,
                    child: Text(buttonCancel.name, style: AppTextStyle.cls3Style(fontSize: 15.w)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

showTwoButtonsRow(
  BuildContext context,
  String title,
  String subtitle,
  ButtonModel buttonOk,
  ButtonModel buttonCancel,
) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.white,
        child: TwoButtonsRow(title: title, subtitle: subtitle, buttonOk: buttonOk, buttonCancel: buttonCancel,),
      );
    },
  );
}
