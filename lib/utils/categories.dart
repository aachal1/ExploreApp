import 'package:exploreapp_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:figma_squircle/figma_squircle.dart';

class Categories extends StatelessWidget {
  final categoryIcon;
  final String catergoryName;
  final Color color;
  const Categories({
    Key? key,
    required this.categoryIcon,
    required this.catergoryName,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 18),
      child: Column(
        children: [
          Container(
              child: Icon(
                categoryIcon,
                size: 25,
                color: Color.fromARGB(255, 60, 60, 60),
              ),
              width: 70,
              height: 70,
              decoration: ShapeDecoration(
                  color: color,
                  shape: SmoothRectangleBorder(
                      borderRadius: SmoothBorderRadius(
                          cornerRadius: 14, cornerSmoothing: 1)))),
          SizedBox(
            height: 8,
          ),
          Text(
            catergoryName,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
