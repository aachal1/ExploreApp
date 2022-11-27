import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const ColorBlack = Color.fromARGB(255, 0, 0, 0);
const ColorPink = Color.fromARGB(255, 249, 0, 96);
const ColorWhite = Color.fromARGB(255, 255, 255, 255);
const ColorGrey = Color.fromARGB(255, 38, 38, 38);

const TextTheme TextThemeDefault = TextTheme(
  headline1: TextStyle(
    color: ColorBlack,
    fontSize: 26,
    fontWeight: FontWeight.w400,
  ),
  headline2:
      TextStyle(color: ColorBlack, fontSize: 22, fontWeight: FontWeight.w400),
  headline3:
      TextStyle(color: ColorBlack, fontSize: 18, fontWeight: FontWeight.w500),
  subtitle1:
      TextStyle(color: ColorBlack, fontSize: 15, fontWeight: FontWeight.w300),
  subtitle2:
      TextStyle(color: ColorBlack, fontSize: 17, fontWeight: FontWeight.w500),
  bodyText1:
      TextStyle(color: ColorWhite, fontSize: 25, fontWeight: FontWeight.w500),
  // bodyText2:
  //     TextStyle(color: ColorWhite, fontSize: 16, fontWeight: FontWeight.w500),
  caption:
      TextStyle(color: ColorWhite, fontSize: 16, fontWeight: FontWeight.w300),
);

// const TextTheme TextThemeSmall = TextTheme(
//     headline1:
//         TextStyle(color: ColorBlack, fontSize: 25, fontWeight: FontWeight.w400),
//     headline2:
//         TextStyle(color: ColorBlack, fontSize: 18, fontWeight: FontWeight.w200),
//     headline3: TextStyle(
//         color: ColorBlack, fontSize: 12, fontWeight: FontWeight.normal),
//     headline4: TextStyle(
//         color: ColorBlack, fontSize: 10, fontWeight: FontWeight.w400));

