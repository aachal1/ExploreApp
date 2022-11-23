import 'package:exploreapp_ui/utils/datas.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSlide extends StatelessWidget {
  final _beachList = Beaches.beachList();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: _beachList.length,
        itemBuilder: (context, index, realIndex) {
          var beaches = _beachList[index];

          return SafeArea(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    beaches.beachImage,
                    fit: BoxFit.cover,
                    width: 250,
                    height: 500,
                  ),
                )
              ],
            ),
          );
        },
        options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),

            // aspectRatio: 5 / 2,
            enlargeCenterPage: true,
            height: 400,
            enableInfiniteScroll: true,
            viewportFraction: 0.60));
  }
}
