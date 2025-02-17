import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/styles/app_images.dart';

class BackWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final Color? color;

  const BackWidget({super.key, this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => context.pop(),
      child: Container(
        padding: EdgeInsets.only(right: 10, top: 5, left: 5, bottom: 5),
        child: SizedBox(
          width: 14.5.w,
          height: 12.h,
          child: color != null ? Image.asset(AppCoreImages.backArrowx65, color: color) : Image.asset(AppCoreImages.backArrowx65),
        ),
      ),
    );
  }
}
