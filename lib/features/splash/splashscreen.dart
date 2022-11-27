import 'dart:async';
import 'package:page_route_animator/page_route_animator.dart';

import 'package:exploreapp_ui/features/splash/2ndexplore.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context,
            PageRouteAnimator(
                child: ExplorePage(),
                routeAnimation: RouteAnimation.leftToRight,
                duration: Duration(milliseconds: 1000),
                curve: Curves.fastLinearToSlowEaseIn)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.white,
        child: Image.asset(
          'assets/explore.gif',
          fit: BoxFit.cover,
          gaplessPlayback: true,
        ),
      ),
    );
  }
}
