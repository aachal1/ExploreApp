import 'package:exploreapp_ui/common/dummy_data.dart';
import 'package:exploreapp_ui/features/category/ui/pages/carouselclick.dart';
import 'package:exploreapp_ui/common/constants.dart';
import 'package:exploreapp_ui/features/category/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSlide extends StatelessWidget {
  final _beachList = DummyData.beachList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: _beachList.length,
        itemBuilder: (context, index, realIndex) {
          var beaches = _beachList[index];

          return SafeArea(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryDetail(
                        beaches: beaches,
                      ),
                    ));
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      beaches.image,
                      fit: BoxFit.cover,
                      width: 250,
                      height: 500,
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      left: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            beaches.name,
                            style: TextStyle(
                                color: ColorWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            beaches.location,
                            style: TextStyle(
                                color: ColorWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ))
                ],
              ),
            ),
          );
        },
        options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 8),

            // aspectRatio: 5 / 2,
            enlargeCenterPage: true,
            height: 400,
            enableInfiniteScroll: true,
            viewportFraction: 0.60));
  }
}
