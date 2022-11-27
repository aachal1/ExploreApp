import 'package:exploreapp_ui/features/category/ui/pages/categoryscreen.dart';
import 'package:exploreapp_ui/features/category/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:figma_squircle/figma_squircle.dart';

class Categories extends StatelessWidget {
  final categoryIcon;
  final String catergoryName;
  final Color color;
  List<CategoryModel> list;
  Categories(
      {Key? key,
      required this.categoryIcon,
      required this.catergoryName,
      required this.color,
      required this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 18),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryList(
                      list: list,
                      name: catergoryName,
                    ),
                  ));
            },
            child: Container(
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
          ),
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
