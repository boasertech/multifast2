import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/styles/app_images.dart';

class BackWidget extends StatelessWidget {
  final VoidCallback? onTap;

  const BackWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => context.pop(),
      child: Padding(
        padding: EdgeInsets.only(right: 15),
        child: SizedBox(
          width: 14.5.w,
          height: 12.h,
          child: Image.asset(AppCoreImages.backArrowx65),
        ),
      ),
    );
  }
}
