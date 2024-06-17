import 'package:flutter/material.dart';

import '../../styles/colors.dart';

// ? FONT HEADING SIZE
const double headlinelarge = 48;
const double headline1 = 28;
const double headline2 = 23;
const double headline3 = 20;
const double headline4 = 18;
const double headline5 = 14;
const double headline6 = 12;
const double headline7 = 10;

// ? SET FUNCTION FOR FONTSTYLE

TextStyle fontStyle({Color? color, FontWeight? fontWeight, double? fontSize, double? letterSpacing, FontStyle? fontStyle, Paint? foreground, double? height, String? fontFamily}) {
  return TextStyle(
    fontFamily: 'Edmondsans',
    foreground: foreground,
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeight.normal,
    letterSpacing: letterSpacing,
    fontStyle: fontStyle,
    height: height,
  );
}

class FoundationGreenD1 {
  const FoundationGreenD1();
  TextStyle get large => fontStyle(
        color: foundationGreenD1,
        fontSize: headlinelarge,
      );
  TextStyle get h1 => fontStyle(
        color: foundationGreenD1,
        fontSize: headline1,
      );
  TextStyle get h2 => fontStyle(
        color: foundationGreenD1,
        fontSize: headline2,
      );
  TextStyle get h3 => fontStyle(
        color: foundationGreenD1,
        fontSize: headline3,
      );
  TextStyle get h4 => fontStyle(
        color: foundationGreenD1,
        fontSize: headline4,
      );
  TextStyle get h5 => fontStyle(
        color: foundationGreenD1,
        fontSize: headline5,
      );
  TextStyle get h6 => fontStyle(
        color: foundationGreenD1,
        fontSize: headline6,
      );
}

class White {
  const White();
  TextStyle get large => fontStyle(
        color: white,
        fontSize: headlinelarge,
      );
  TextStyle get h1 => fontStyle(
        color: white,
        fontSize: headline1,
      );
  TextStyle get h2 => fontStyle(
        color: white,
        fontSize: headline2,
      );
  TextStyle get h3 => fontStyle(
        color: white,
        fontSize: headline3,
      );
  TextStyle get h4 => fontStyle(
        color: white,
        fontSize: headline4,
      );
  TextStyle get h5 => fontStyle(
        color: white,
        fontSize: headline5,
      );
  TextStyle get h6 => fontStyle(
        color: white,
        fontSize: headline6,
      );
}
