import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle textSize12(
      {Color color = AppColors.CherryPie,
      FontWeight fontWeight = FontWeight.w400}) {
    return TextStyle(
      fontSize: 12,
      color: color,
      fontWeight: fontWeight,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle textSize14(
      {Color color = AppColors.CherryPie,
      FontWeight fontWeight = FontWeight.w400}) {
    return TextStyle(
      fontSize: 14,
      color: color,
      fontWeight: fontWeight,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle textSize16(
      {Color color = AppColors.CherryPie,
      FontWeight fontWeight = FontWeight.w700}) {
    return TextStyle(
      fontSize: 16,
      color: color,
      fontWeight: fontWeight,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle textSize18(
      {Color color = AppColors.CherryPie,
      FontWeight fontWeight = FontWeight.w700}) {
    return TextStyle(
      fontSize: 18,
      color: color,
      fontWeight: fontWeight,
      decoration: TextDecoration.none,
    );
  }

  static TextStyle textSizeCustom(
      {Color color = AppColors.CherryPie,
      double size = 20,
      FontWeight fontWeight = FontWeight.w400}) {
    return TextStyle(
      fontSize: size,
      color: color,
      fontWeight: fontWeight,
      decoration: TextDecoration.none,
    );
  }
}
