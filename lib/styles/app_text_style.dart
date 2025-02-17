import 'package:flutter/material.dart';
import 'package:multifast/styles/app_colors.dart';

class AppTextStyle {
  static const String _fontFamily = 'KoHo';

  // Estilo base
  static const TextStyle _baseStyle = TextStyle(
    fontFamily: _fontFamily,
  );

  // My styles
  static TextStyle defaultStyle({double? fontSize, FontWeight? fontW}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 13,
      color: AppColors.cls1,
      fontWeight: fontW ?? FontWeight.w500,
    );
  }

  static TextStyle appBarStyle({double? fontSize, FontWeight? fontW}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 16,
      color: AppColors.cls1,
      fontWeight: fontW ?? FontWeight.w600,
    );
  }

  static TextStyle cls10Style({double? fontSize, FontWeight? fontW}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 13,
      color: AppColors.cls10,
      fontWeight: fontW ?? FontWeight.w500,
    );
  }
  
  static TextStyle clsWhiteStyle({double? fontSize, FontWeight? fontW}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 10,
      color: Colors.white,
      fontWeight: fontW ?? FontWeight.w500,
    );
  }

  static TextStyle big24({double? fontSize, Color? color, FontWeight? fontW}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 24,
      color: color ?? Colors.white,
      fontWeight: fontW ?? FontWeight.bold,
    );
  }

  static TextStyle lightStyle({double? fontSize, FontWeight? fontW, Color? color}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 11,
      color: color ?? AppColors.cls9,
      fontWeight: fontW ?? FontWeight.w500,
    );
  }

  static TextStyle cls2Style({double? fontSize, FontWeight? fontW, Color? color}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 15,
      color: color ?? AppColors.cls2,
      fontWeight: fontW ?? FontWeight.w600,
    );
  }

  static TextStyle cls3Style({double? fontSize, FontWeight? fontW, Color? color}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 14,
      color: color ?? AppColors.cls3,
      fontWeight: fontW ?? FontWeight.w500,
    );
  }

  static TextStyle cls9Style({double? fontSize, FontWeight? fontW, Color? color}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 14,
      color: color ?? AppColors.cls9,
      fontWeight: fontW ?? FontWeight.w500,
    );
  }

  static TextStyle cls5Style({double? fontSize, FontWeight? fontW, Color? color}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 12,
      color: color ?? AppColors.cls5,
      fontWeight: fontW ?? FontWeight.w700,
    );
  }

  static TextStyle cls8Style({double? fontSize, FontWeight? fontW, Color? color}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 15,
      color: color ?? AppColors.cls8,
      fontWeight: fontW ?? FontWeight.w500,
    );
  }

  static TextStyle clsWhite({double? fontSize, FontWeight? fontW, Color? color}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 15,
      color: color ?? Colors.white,
      fontWeight: fontW ?? FontWeight.w600,
    );
  }

  static TextStyle error({double? fontSize, FontWeight? fontW, Color? color}) {
    return _baseStyle.copyWith(
      fontSize: fontSize ?? 13,
      color: color ?? AppColors.error,
      fontWeight: fontW ?? FontWeight.w500,
    );
  }
  
  // Títulos y subtítulos
  static final TextStyle title = _baseStyle.copyWith(
    fontSize: 21.6,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle subtitle = _baseStyle.copyWith(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle subtitleSecondary = _baseStyle.copyWith(
    fontSize: 20,
    color: AppColors.darkGray,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle subtitleFastOption = _baseStyle.copyWith(
    fontSize: 16,
    color: AppColors.charcoal,
    fontWeight: FontWeight.w500,
  );

  // Textos generales
  static final TextStyle text = _baseStyle.copyWith(
    fontSize: 15,
    color: AppColors.oliveGray,
  );

  static final TextStyle textSecondary = _baseStyle.copyWith(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.normal,
  );

  static final TextStyle textAlternative = _baseStyle.copyWith(
    fontSize: 11,
    color: AppColors.charcoal,
    fontWeight: FontWeight.w500,
  );

  // Números
  static final TextStyle number = _baseStyle.copyWith(
    fontSize: 21,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle numberSecondary = _baseStyle.copyWith(
    fontSize: 21,
    color: AppColors.orange,
    fontWeight: FontWeight.bold,
  );

  // Botones
  static final TextStyle button = _baseStyle.copyWith(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
}
