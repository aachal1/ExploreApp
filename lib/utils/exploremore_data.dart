import 'package:flutter/cupertino.dart';

class Explore {
  String Name;
  String Location;
  String ImagePath;

  Explore(this.Name, this.Location, this.ImagePath);

  static List<Explore> exploreList() {
    return [
      Explore('Arctic Desert', 'Northern Europe', 'assets/1.jpg'),
      Explore('Baikunthapur Forest', 'Dooars, West Bengal', 'assets/3.jpg'),
      Explore('Aconcagua', 'Argentina, S. America', 'assets/7.jpg'),
      Explore('Mount Kilimanjaro', 'Tanzania, Africa', 'assets/5.webp'),
      Explore('Candolim Beach', 'North Goa', 'assets/6.jpg'),
    ];
  }
}
