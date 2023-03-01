import 'package:cari_jodoh/theme_manager/color_manager.dart';
import 'package:cari_jodoh/theme_manager/font_manager.dart';
import 'package:flutter/material.dart';

/// set parameter theme pada app

ThemeData getAppThemeData(){
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.primary,
      elevation: 0
    ),
    fontFamily: FontFamilyConstant.fontFamily
  );
}