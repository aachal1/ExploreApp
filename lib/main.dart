// import 'dart:html';

import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import 'package:exploreapp_ui/Screens/splashscreen.dart';
import 'package:exploreapp_ui/utils/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        title: "Explore App",
        theme: ThemeData(
            primarySwatch: Colors.pink,
            textTheme:
                screenWidth < 500 ? TextThemeDefault : TextThemeDefault));
  }
}
