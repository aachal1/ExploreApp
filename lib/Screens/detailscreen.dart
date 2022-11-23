import 'package:exploreapp_ui/Screens/homescreen.dart';
import 'package:exploreapp_ui/utils/constants.dart';
import 'package:exploreapp_ui/utils/datas.dart';
import 'package:flutter/material.dart';
import 'package:figma_squircle/figma_squircle.dart';

class DetailScreen extends StatelessWidget {
  final Explore explore;
  final double expandedHeight = 300;
  final double roundContainerHeight = 50;

  const DetailScreen({super.key, required this.explore});

  @override
  Widget build(BuildContext context) {
    final ThemeData text = Theme.of(context);
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              _buildSilverHead(),
              SliverToBoxAdapter(
                child: _buildDetail(),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: 25, top: MediaQuery.of(context).padding.top),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: ((context) => HomeScreen())));
                },
                child: Container(
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 15,
                  ),
                  decoration: ShapeDecoration(
                      color: ColorWhite.withOpacity(0.5),
                      shape: SmoothRectangleBorder(
                          borderRadius: SmoothBorderRadius(
                              cornerRadius: 9, cornerSmoothing: 1))),
                  width: 30,
                  height: 30,
                ),
              ))
        ],
      ),
    );
  }

  Widget _buildSilverHead() {
    return SliverPersistentHeader(
        delegate: DetailSliverDelegate(
            explore: explore,
            expandedHeight: expandedHeight,
            roundContainerHeight: roundContainerHeight));
  }

  Widget _buildDetail() {
    return Container(
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: ColorWhite,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(35))),
      child: Column(
        children: [
          _buildUserInfo(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(
                  color: Color.fromARGB(255, 93, 93, 93),
                  fontSize: 16,
                  height: 1.5),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1.5),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 160, child: FeaturedWidget()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: TextStyle(
                  color: Color.fromARGB(255, 93, 93, 93),
                  fontSize: 16,
                  height: 1.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              explore.ImagePath,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  explore.Name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  explore.Location,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.share,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final Explore explore;
  final double expandedHeight;
  final double roundContainerHeight;

  DetailSliverDelegate({
    required this.explore,
    required this.expandedHeight,
    required this.roundContainerHeight,
  });
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final ThemeData text = Theme.of(context);
    return Stack(
      children: [
        Opacity(
          opacity: 1,
          child: Container(
            child: Image.asset(
              // filterQuality: FilterQuality.high,
              cacheHeight: 80,
              // cacheWidth: 90,
              // semanticLabel: ,
              // centerSlice: Rect.fromCircle(center: Offset(1, 1), radius: 5),
              explore.ImagePath,
              width: MediaQuery.of(context).size.width,
              height: expandedHeight,
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
                color: ColorBlack,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(35))),
          ),
        ),
        // Positioned(
        //     top: expandedHeight -
        //         roundContainerHeight -
        //         shrinkOffset, //shrinkoffset
        //     child: Container(
        //       width: MediaQuery.of(context).size.width,
        //       height: roundContainerHeight,
        //       decoration: ShapeDecoration(
        //           color: ColorWhite,
        //           shape: SmoothRectangleBorder(
        //               borderRadius: SmoothBorderRadius.only(
        //                   // topLeft: SmoothRadius(
        //                   //     cornerRadius: 25, cornerSmoothing: 1),
        //                   // topRight: SmoothRadius(
        //                   //     cornerRadius: 25, cornerSmoothing: 1),
        //                   bottomLeft: SmoothRadius(
        //                       cornerRadius: 25, cornerSmoothing: 1),
        //                   bottomRight: SmoothRadius(
        //                       cornerRadius: 25, cornerSmoothing: 1)))),
        //     )),
        Positioned(
            top: expandedHeight - shrinkOffset - 120,
            left: 25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  explore.Name,
                  style: text.textTheme.bodyText1,
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
                    Text(
                      explore.Location,
                      style: text.textTheme.caption,
                    ),
                  ],
                ),
              ],
            )),
        Positioned(
            top: expandedHeight - shrinkOffset - 100,
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
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class FeaturedWidget extends StatelessWidget {
  final _list = Explore.exploreList();
  @override
  Widget build(Object context) {
    return ListView.separated(
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var explore = _list[index];
          return Container(
            width: 120,
            child: Image.asset(explore.ImagePath, fit: BoxFit.cover),
          );
        },
        separatorBuilder: (_, index) => SizedBox(width: 10),
        itemCount: _list.length);
  }
}
