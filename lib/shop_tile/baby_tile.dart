import 'package:flutter/material.dart';

class BabyTile extends StatelessWidget {
  final String itemName;
  final String description;
  final String price;
  final String icon;
  final int percentage;
  const BabyTile({Key? key, required this.itemName, required this.description, required this.price, required this.icon, required this.percentage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade100
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.shade400,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    padding: EdgeInsets.all(3),
                    child: Text("-"+percentage.toString()+"%",style: TextStyle(fontSize: 15,color: Colors.grey.shade50),)),
                Spacer(),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)
                    ),
                    padding: EdgeInsets.all(2),
                    child: Icon(Icons.favorite_border,color: Colors.red,))
              ],
            ),
            SizedBox(height: 10,),
            //product image
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(icon),fit: BoxFit.cover)
                ),
              ),
            ),
            SizedBox(height: 8,),
            //title
            Text(itemName,style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
            Text(description,style: TextStyle(fontSize: 17,color: Colors.grey.shade600),),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.greenAccent.shade200,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(3),
                      child: Text("\$"+price,style: TextStyle(fontSize: 20),)),
                  Spacer(),
                  Icon(Icons.shopping_cart_outlined,size: 25,color: Colors.deepPurple,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}