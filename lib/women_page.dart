import 'package:flutter/material.dart';
import 'package:shopping_app_ui/shop_tile/women_tile.dart';

class WomenPage extends StatelessWidget {
  const WomenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List womenList=[
      ["Women Dress", "Indian Saree","190", "lib/images/women_dress.jpg", 20],
      ["Hand Bag", "Channel","150", "lib/images/hand_bag.jpg", 30],
      ["Makeup", "Makeup set","180", "lib/images/makeup.jpg", 50],
      ["Perfumes", "Ladies Perfume","100", "lib/images/women_perfume.jpg", 15],
      ["Women Shoes", "Lotto","80", "lib/images/women_shoes.jpg", 40],
      ["Lahenga", "Indian Grown","50", "lib/images/lehenga.jpg", 25]
    ];
    return GridView.builder(
        itemCount: womenList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1/1.35),
        itemBuilder: (context,index){
          return WomenTile(
            itemName: womenList[index][0],
            description: womenList[index][1],
            price: womenList[index][2],
            icon: womenList[index][3],
            percentage: womenList[index][4],
          );
        });
  }
}
