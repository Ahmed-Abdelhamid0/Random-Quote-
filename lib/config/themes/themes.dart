import 'package:clean_app/core/utils/colors.dart';
import 'package:clean_app/core/utils/strings.dart';
import 'package:flutter/material.dart';

ThemeData appTheme(){
  return ThemeData(
    primaryColor: AppColors.primary,
    highlightColor: AppColors.hint,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: AppStrings.fontFamilyTajawal,
    appBarTheme: AppBarThemeData(
      backgroundColor: Colors.black,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
      )
    )
  );
}