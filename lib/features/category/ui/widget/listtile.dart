import 'package:exploreapp_ui/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:figma_squircle/figma_squircle.dart';

class ListTileUi extends StatelessWidget {
  final String placename;
  final String locationname;
  final String imageurl;
  const ListTileUi({
    super.key,
    required this.placename,
    required this.locationname,
    required this.imageurl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: ShapeDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            shadows: [
              BoxShadow(
                  color: Color.fromRGBO(221, 221, 221, 1),
                  offset: Offset(0, 3),
                  blurRadius: 10)
            ],
            shape: SmoothRectangleBorder(
                borderRadius:
                    SmoothBorderRadius(cornerRadius: 9, cornerSmoothing: 1))),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      imageurl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        placename,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        locationname,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 116, 116, 116)),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '4.9',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 255, 230, 0),
                  )
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
