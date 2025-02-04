import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

class SummaryDetail extends StatefulWidget {
  final String name;
  const SummaryDetail({super.key, required this.name});

  @override
  State<SummaryDetail> createState() => _SummaryDetailState();
}

class _SummaryDetailState extends State<SummaryDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cls4_2, 
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(color: AppColors.cls4)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 14.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 23.h,
              height: 23.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AppIcons.clock,
                  width: 12.h,
                  height: 12.h,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              widget.name,
              style: AppTextStyle.defaultStyle(),
            ),
            Text(
              25.toString(),
              style: AppTextStyle.big24(color: AppColors.cls4),
            ),
          ],
        ),
      ),
    );
  }
}
