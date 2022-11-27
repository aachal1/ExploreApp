import 'package:exploreapp_ui/features/category/ui/pages/carouselclick.dart';
import 'package:exploreapp_ui/features/category/ui/widget/carousel.dart';
import 'package:exploreapp_ui/features/category/ui/widget/listtile.dart';
import 'package:exploreapp_ui/features/category/model/category_model.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  List<CategoryModel> list;
  String name;
  CategoryList({super.key, required this.list, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(name)),
        body: Container(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 15,
              ),
              _carousel(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  'More Lists',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 76, 76, 76)),
                ),
              ),
              Container(
                height: 300,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoryDetail(
                                    beaches: list[index],
                                  ),
                                ));
                          },
                          child: ListTileUi(
                              placename: list[index].name,
                              locationname: list[index].location,
                              imageurl: list[index].image),
                        );
                      }),
                ),
              )
            ]),
          ),
        ));
  }

  Widget _carousel() {
    return CarouselSlide();
  }
}
