import 'dart:ui';

import 'package:exploreapp_ui/features/homepage/ui/pages/homescreen.dart';
import 'package:exploreapp_ui/common/constants.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/8.jpg'), fit: BoxFit.cover)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Padding(
            padding: const EdgeInsets.only(top: 550),
            child: Column(
              children: [
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: ColorPink,
                        elevation: 15,
                      ),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => HomeScreen()))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Explore Now',
                          style: TextStyle(fontSize: 20),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
