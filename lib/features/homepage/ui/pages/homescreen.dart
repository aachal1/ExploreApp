import 'package:exploreapp_ui/common/dummy_data.dart';
import 'package:exploreapp_ui/features/homepage/ui/widget/categories.dart';
import 'package:exploreapp_ui/common/constants.dart';
import 'package:exploreapp_ui/features/homepage/ui/widget/explore_more.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // bool click = true;
  int _currentIndex = 0;
  void onitemTapped(index) {
    setState(() {
      _currentIndex = index;
      // click = !click;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData text = Theme.of(context);
    return Scaffold(
      backgroundColor: ColorWhite,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          height: 60,
          decoration: BoxDecoration(),
          child: BottomNavigationBar(
            backgroundColor: ColorPink,
            onTap: onitemTapped,
            currentIndex: _currentIndex,
            selectedItemColor: Color.fromARGB(255, 255, 255, 255),
            unselectedItemColor: Color.fromARGB(255, 86, 86, 86),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 25,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border_rounded,
                    size: 25,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings_outlined,
                    size: 25,
                  ),
                  label: '')
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi Jared !',
                    style: text.textTheme.headline2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 7),
                                blurRadius: 10,
                                spreadRadius: 2,
                                color: ColorGrey.withOpacity(0.2))
                          ]),
                      child: CircleAvatar(
                        maxRadius: 22,
                        backgroundImage: AssetImage('assets/user.jpg'),
                      ),
                    ),
                  )
                ],
              ),
              Text(
                'Discover your best choice',
                style: text.textTheme.headline1,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search place',
                        style: text.textTheme.subtitle1,
                      ),
                      Icon(Icons.search_rounded),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Select Categories',
                style: text.textTheme.subtitle2,
              ),
              SizedBox(
                height: 18,
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Categories(
                          categoryIcon: Icons.beach_access_rounded,
                          catergoryName: 'Beach',
                          list: DummyData.beachList,
                          color: Color.fromARGB(255, 78, 202, 255)),
                      Categories(
                          categoryIcon: Icons.forest_sharp,
                          catergoryName: 'Forest',
                          list: DummyData.forestList,
                          color: Color.fromARGB(255, 78, 255, 93)),
                      Categories(
                          categoryIcon: Icons.hotel_class_rounded,
                          catergoryName: 'Hotel',
                          list: DummyData.forestList,
                          color: Color.fromARGB(255, 255, 106, 106)),
                      Categories(
                          categoryIcon: Icons.air,
                          catergoryName: 'Desert',
                          list: DummyData.forestList,
                          color: Color.fromARGB(255, 255, 231, 78)),
                      Categories(
                          categoryIcon: Icons.restaurant_outlined,
                          catergoryName: 'Restaurants',
                          list: DummyData.forestList,
                          color: Color.fromARGB(255, 239, 117, 255)),
                    ],
                  )),
              SizedBox(
                height: 25,
              ),
              Text(
                'Explore More',
                style: text.textTheme.subtitle2,
              ),
              SizedBox(
                height: 18,
              ),
              Expanded(child: ExploreMore()),
            ],
          ),
        ),
      ),
    );
  }
}
