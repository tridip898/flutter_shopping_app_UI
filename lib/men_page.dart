import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app_ui/cart_model.dart';
import 'package:shopping_app_ui/shop_tile/men_tile.dart';

class MenPage extends StatelessWidget {
  const MenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<CartModel>(builder: (context,value,child){
        return GridView.builder(
            itemCount: value.shopItems.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.38),
            itemBuilder: (context,index){
              return MenTile(
                itemName: value.shopItems[index][0],
                description: value.shopItems[index][1],
                price: value.shopItems[index][2],
                icon: value.shopItems[index][3],
                percentage: value.shopItems[index][4],
                onPressed: (){
                  Provider.of<CartModel>(context,listen: false).addItemToCart(index);
                },
              );
            });
      })

    );
  }
}
