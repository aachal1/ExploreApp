import 'package:exploreapp_ui/Screens/detailscreen.dart';
import 'package:exploreapp_ui/utils/constants.dart';
import 'package:exploreapp_ui/utils/datas.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:shadow_overlay/shadow_overlay.dart';

class ExploreMore extends StatelessWidget {
  final _explorelist = Explore.exploreList(); //obj
  final _pagectrl = PageController(viewportFraction: 0.9);
  ExploreMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData text = Theme.of(context);
    return PageView.builder(
      controller: _pagectrl,
      itemCount: _explorelist.length,
      itemBuilder: ((context, index) {
        var explore = _explorelist[index]; //var ,pass index
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => DetailScreen(
                          explore: explore,
                        ))));
          },
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(right: 14, left: 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ShadowOverlay(
                    shadowColor:
                        Color.fromARGB(255, 21, 21, 21).withOpacity(0.8),
                    shadowHeight: 200,
                    shadowWidth: 500,
                    child: Image.asset(
                      explore.ImagePath,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 30,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        explore.Name,
                        style: text.textTheme.bodyText1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: ColorWhite,
                            size: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(explore.Location, style: text.textTheme.caption),
                        ],
                      )
                    ],
                  )),
              Positioned(
                  bottom: 25,
                  right: 25,
                  child: Row(
                    children: [
                      Text(
                        '4.9',
                        style: TextStyle(color: ColorWhite, fontSize: 15),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.star_sharp,
                        color: Colors.yellow,
                      )
                    ],
                  ))
            ],
          ),
        );
      }),
    );
  }
}
