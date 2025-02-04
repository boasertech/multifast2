import 'package:flutter/material.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_text_style.dart';

class AppTextFormStyle {
  static final _baseInputDecoration = InputDecoration(
    hintStyle: AppTextStyle.cls9Style(),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: AppColors.border, width: 2)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: AppColors.cls4, width: 2)),
  );

  static InputDecoration defaultInputDecoration(String hintText, String icon) {
    return _baseInputDecoration.copyWith(
      prefixIcon: Image.asset(icon, scale: 1.6, color: AppColors.cls9),
      hintText: hintText,
    );
  }
}
