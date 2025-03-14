import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

class TwoButttonsColumn extends StatelessWidget {
  final String title;
  final String subtitle;
  final ButtonModel buttonOk;
  final ButtonModel buttonCancel;
  const TwoButttonsColumn(
      {super.key, required this.title, required this.subtitle, required this.buttonOk, required this.buttonCancel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 277.w,
      height: 245.h,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Image.asset(AppIcons.cancel, scale: 1.2))
            ],
          ),
          SizedBox(height: 15.h),
          Text(
            title,
            style: AppTextStyle.cls3Style(fontW: FontWeight.w600, fontSize: 18).copyWith(height: 1.15),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.h),
          Text(
            subtitle,
            style: AppTextStyle.cls10Style(fontSize: 15, fontW: FontWeight.w400).copyWith(height: 1.15),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          _buildButton(context, buttonOk),
          SizedBox(height: 8.h),
          _buildButton(context, buttonCancel),
        ],
      ),
    );
  }

  _buildButton(BuildContext context, ButtonModel button) {
    return GestureDetector(
      onTap: button.function,
      child: Container(
        width: 237.w,
        height: 35.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Center(child: Text(button.name, style: AppTextStyle.cls2Style())),
      ),
    );
  }
}

showSaveQuotation(
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
        child: TwoButttonsColumn(
          title: title,
          subtitle: subtitle,
          buttonOk: buttonOk,
          buttonCancel: buttonCancel,
        ),
      );
    },
  );
}

class ButtonModel {
  final String name;
  final VoidCallback function;

  ButtonModel(this.name, this.function);
}
