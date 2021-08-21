import 'package:amur/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyles {
  AppStyles._();

  static const String fontName = 'Roboto';

  static const body = TextStyle(
    fontFamily: fontName,
    fontSize: 14,
    height: 14 / 10,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    letterSpacing: 1,
    color: AppColors.black,
  );
}
