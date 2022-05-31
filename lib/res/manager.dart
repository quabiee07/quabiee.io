import 'package:flutter/material.dart';

class FontConstant{
  static const String fontFamily = "Montserrat";
}

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight black = FontWeight.w800;
}

class FontSize{
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s17 = 17.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s40 = 40.0;
}



TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      color: color);
}

//regular text style
TextStyle getRegularStyle(
    {required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.regular, color);
}

//light text style
TextStyle getLightStyle(
    {required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.light, color);
}

//black text style
TextStyle getBlackStyle(
    {required double fontSize , required Color color}) {
  return _getTextStyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.black, color);
}

//bold text style
TextStyle getBoldStyle(
    {required double fontSize , required Color color}) {
  return _getTextStyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.bold, color);
}

// semi bold text style
TextStyle getSemiBoldStyle(
    {required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.semiBold, color);
}

//medium text style
TextStyle getMediumStyle(
    {required double fontSize, required Color color}) {
  return _getTextStyle(
      fontSize, FontConstant.fontFamily, FontWeightManager.medium, color);
}

class ColorManager{
  static Color primaryBlue = Color(0xFF1652F0);
  static Color secondaryBlue = Color(0xFF0070F2);
  static Color backgroundColor = Color(0xFFE9F2F7);
  static Color secondaryColor = Color(0xFF80B5FF);
  // static Color secondaryColor = Color(0xFF);
}