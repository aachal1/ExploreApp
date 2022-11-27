import 'package:exploreapp_ui/common/constants.dart';
import 'package:exploreapp_ui/features/category/model/category_model.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class CategoryDetail extends StatelessWidget {
  final CategoryModel beaches;
  const CategoryDetail({super.key, required this.beaches});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottomnavbar

      bottomNavigationBar: Container(
        height: 70,
        // color: Colors.amber,
        child: Row(
          children: [
            LikeButton(
              size: 32,
              circleColor:
                  CircleColor(start: Colors.redAccent, end: Colors.redAccent),
              bubblesColor: BubblesColor(
                dotPrimaryColor: Colors.redAccent,
                dotSecondaryColor: Colors.redAccent,
              ),
              likeBuilder: (bool isLiked) {
                return Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: Colors.redAccent,
                  size: 32,
                );
              },
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: SmoothRectangleBorder(
                borderRadius: SmoothBorderRadius.only(
                    bottomLeft:
                        SmoothRadius(cornerRadius: 30, cornerSmoothing: 1),
                    bottomRight:
                        SmoothRadius(cornerRadius: 30, cornerSmoothing: 1))),
            leading: GestureDetector(
              child: Container(
                  padding: EdgeInsets.all(6.0),
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: ShapeDecoration(
                      color: ColorBlack.withOpacity(0.5),
                      shape: SmoothRectangleBorder(
                          borderRadius: SmoothBorderRadius(
                              cornerRadius: 12, cornerSmoothing: 1))),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 18,
                  )),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            flexibleSpace: ClipRRect(
              borderRadius: SmoothBorderRadius.only(
                  bottomLeft:
                      SmoothRadius(cornerRadius: 30, cornerSmoothing: 1),
                  bottomRight:
                      SmoothRadius(cornerRadius: 30, cornerSmoothing: 1)),
              child: Image.asset(
                beaches.image,
                fit: BoxFit.cover,
              ),
            ),
            expandedHeight: 230,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            _header(),
            _header(),
          ]))
        ],
      ),
    );
  }

  _header() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //name
          Text(
            beaches.name,
            style: TextStyle(
                color: Color.fromARGB(255, 36, 36, 36),
                fontWeight: FontWeight.bold,
                fontSize: 22,
                letterSpacing: 0.5),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 18,
                color: Color.fromARGB(255, 36, 36, 36),
              ),
              SizedBox(
                width: 6,

                //location
              ),
              Text(
                beaches.location,
                style: TextStyle(
                    color: Color.fromARGB(255, 36, 36, 36),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    letterSpacing: 0.5),
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            "Description",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 46, 174),
                fontWeight: FontWeight.w600,
                fontSize: 18,
                letterSpacing: 0.5),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "This beach is Europe’s tallest dune at over 100 metres. It’s an hour’s drive from Bordeaux and is literally dazzling. You will shield your eyes as much from the shimmering heat haze as the pristine sand. After you’ve taken in the panoramic views over the Atlantic and pine forests behind, there are miles of beaches to explore along the Bassin d’Arcachon.",
            style: TextStyle(
                color: Color.fromARGB(255, 79, 79, 79),
                fontWeight: FontWeight.w400,
                fontSize: 16,
                height: 1.4,
                letterSpacing: 0.2),
          ),
          SizedBox(
            height: 18,
          ),

          // select number of tickets
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Select number of tickets",
                style: TextStyle(
                    color: Color.fromARGB(255, 65, 65, 65),
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    letterSpacing: 0.5),
              ),
              IncreDecre(),
            ],
          )
        ],
      ),
    );
  }
}

//count
class IncreDecre extends StatefulWidget {
  @override
  State<IncreDecre> createState() => _IncreDecreState();
}

class _IncreDecreState extends State<IncreDecre> {
  int _n = 0;

  @override
  _IncreDecreState createState() => new _IncreDecreState();
  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          GestureDetector(
            onTap: () => minus(),
            child: Container(
              width: 45,
              height: 40,
              child: Center(
                  child: Text(
                '-',
                style: TextStyle(fontSize: 35),
              )),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  border:
                      Border.all(style: BorderStyle.solid, color: Colors.red)),
            ),
          ),
          Container(
              width: 45,
              height: 40,
              decoration: BoxDecoration(
                  border:
                      Border.all(style: BorderStyle.solid, color: Colors.red)),
              child: Center(
                  child: Text('$_n',
                      style: new TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500)))),
          GestureDetector(
            onTap: () => add(),
            child: Container(
              width: 45,
              height: 40,
              child: Icon(Icons.add),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  border:
                      Border.all(style: BorderStyle.solid, color: Colors.red)),
            ),
          ),
        ],
      ),
    );
  }
}
