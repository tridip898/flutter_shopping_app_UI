import 'package:flutter/material.dart';
import 'package:shopping_app_ui/shop_tile/baby_tile.dart';

class BabyPage extends StatelessWidget {
  const BabyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List babyList=[
      ["Baby Dress", "Baby Dress","100", "lib/images/baby_dress.jpg", 20],
      ["Baby Shoes", "Apex","80", "lib/images/baby_shoes.jpg", 35],
      ["Baby Carriage", "Baby carrier","180", "lib/images/baby_carriage.webp", 50],
      ["Puzzle", "Game for Baby","120", "lib/images/baby_game.jpg", 15],
      ["Chocolate", "Dairy Milk","50", "lib/images/chocolate.jpg", 10],
      ["Teddy Bear", "Teddy Bear","60", "lib/images/teddy_bear.jpg", 25]
    ];
    return GridView.builder(
        itemCount: babyList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1.35),
        itemBuilder: (context,index){
          return BabyTile(
            itemName: babyList[index][0],
            description: babyList[index][1],
            price: babyList[index][2],
            icon: babyList[index][3],
            percentage: babyList[index][4],
          );
        });
  }
}
