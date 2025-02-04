import 'package:flutter/material.dart';
import 'package:multifast/styles/app_colors.dart';

Widget buildCircularLoadingFast(BuildContext context) {
  return Container(
    color: AppColors.cls1.withValues(alpha: 0.1),
    child: Center(
      child: CircularProgressIndicator(
        color: AppColors.cls4,
      ),
    ),
  );
}
