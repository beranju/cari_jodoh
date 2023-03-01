import 'package:cari_jodoh/theme_manager/color_manager.dart';
import 'package:cari_jodoh/theme_manager/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/// make a function


TextStyle _getTextStyle(
    double fontSize,
    String fontFamily,
    FontWeight fontWeight,
    Color color
    ){
  return GoogleFonts.poppins().copyWith(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color
  );
}

TextStyle getWhiteTextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular
}){
  return _getTextStyle(fontSize, FontFamilyConstant.fontFamily, fontWeight, ColorManager.white);
}

TextStyle getGrey40TextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular
}){
  return _getTextStyle(fontSize, FontFamilyConstant.fontFamily, fontWeight, ColorManager.gray40);
}

TextStyle getGrey60TextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular
}){
  return _getTextStyle(fontSize, FontFamilyConstant.fontFamily, fontWeight, ColorManager.gray60);
}

TextStyle getGreyTextStyle({
  double fontSize = FontSizeManager.f16,
  FontWeight fontWeight = FontWeightManager.regular
}){
  return _getTextStyle(fontSize, FontFamilyConstant.fontFamily, fontWeight, ColorManager.grey);
}