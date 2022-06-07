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
  static Color fadeTextColor = Colors.white;
}

class StringManager{
  static String lorem = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus neque scelerisque a ut fringilla commodo. Condimentum quam tortor facilisi enim. Et scelerisque consequat mattis tellus volutpat sed enim. Mi, bibendum sed quis aliquet ultricies aliquet eu. Lacus mattis dolor urna, in. Magna egestas scelerisque sed neque euismod aliquam. Nulla posuere mi bibendum quam etiam velit mollis parturient nec. Eget tellus eu euismod velit elementum sit. Et euismod egestas enim amet, fames turpis. Bibendum eget ultricies sed sit vitae venenatis, quis sit senectus. Scelerisque aenean tortor nunc quis pretium. Vulputate id imperdiet tellus, vestibulum quis amet posuere iaculis lacus. Nulla pellentesque nisi sit sem nisl egestas.';
  static String lorem1 = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Faucibus neque scelerisque a ut fringilla commodo. Condimentum quam tortor facilisi enim. Et scelerisque consequat mattis tellus volutpat sed enim. Mi, bibendum sed quis aliquet ultricies aliquet eu. Lacus mattis dolor \nurna, in.';
  static String text = 'I\'m a self-taught mobile developer with more than\n3 years of experience in android development.\nI am also seasoned UI designer who creates minimalist \nbut beautiful designs for web and mobile applications. \nI build both native and cross-platform apps using Flutter.';
  static String salutaion = 'Hello, I\'m ';
  static String name = 'Ihekwaba Ebuka ';
  static String path = 'UI/UX Designer & Mobile Developer ';
  static String languagesIUse = 'Languages I use';
  static String mySkills = 'My Skills';
  static String toolsIUse = 'Frameworks & Tools';

  }

class AssetManager{
  static const String bgImage = 'desktop_bg1.png';
  static const String rocket = 'rocket.png';
  static const String planet = 'planet.png';
  static const String skill = 'Bursts.svg';
  static const String profile = 'Profile.svg';
  static const String home = 'Home.svg';
  static const String projects = 'Microsoft.svg';
  static const String home3D = '';
  static const String skill3D = 'Saly-10.png';
  static const String sideCirle = 'side_circle.png';
  static const String ellipse = 'Ellipse.png';
  static const String skillMobileBg = 'Group60.png';
}