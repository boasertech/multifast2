import 'package:flutter/material.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_text_style.dart';

class AppTextFormStyle {
  static final _baseInputDecoration = InputDecoration(
    hintStyle: AppTextStyle.cls9Style(),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: AppColors.border, width: 2)),
    disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: AppColors.border, width: 2)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: AppColors.cls4, width: 2)),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: AppColors.error, width: 2)),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: AppColors.error, width: 2)),
  );

  static InputDecoration withOutBorders() {
    return InputDecoration(
      border: InputBorder.none,
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
      isDense: true,
    );
  }

  static InputDecoration defaultInputDecoration(String hintText, String icon) {
    return _baseInputDecoration.copyWith(
      prefixIcon: Image.asset(icon, scale: 1.6, color: AppColors.cls9),
      hintText: hintText,
    );
  }

  static InputDecoration defaultInputDecorationWithOutImage(String hintText) {
    return _baseInputDecoration.copyWith(
      hintText: hintText,
      errorStyle: AppTextStyle.error(fontSize: 12),
    );
  }
}
