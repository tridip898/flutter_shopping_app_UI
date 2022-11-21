import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'item_color.dart';
import 'item_size.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.black,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Detail",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.redAccent,
                        size: 30,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("lib/images/shirt.jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Arc(
                edge: Edge.TOP,
                arcType: ArcType.CONVEY,
                height: 30,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40, bottom: 20),
                          child: Row(
                            children: [
                              Text(
                                "Shirt",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Times New Roman"),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 10),
                          child: Row(
                            children: [
                              RatingBar.builder(
                                  initialRating: 3,
                                  maxRating: 5,
                                  minRating: 0.5,
                                  direction: Axis.horizontal,
                                  itemCount: 5,
                                  itemSize: 20,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4),
                                  itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                        size: 35,
                                      ),
                                  onRatingUpdate: (index) {}),
                              Spacer(),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 10,
                                              offset: Offset(0, 3))
                                        ]),
                                    child: Icon(CupertinoIcons.minus),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    child: Text(
                                      "01",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade900),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 10,
                                              offset: Offset(0, 3))
                                        ]),
                                    child: Icon(CupertinoIcons.plus),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            "This is description section where we describe the product feature and characteristics.",
                            style: TextStyle(
                                fontSize: 18, color: Colors.grey.shade700),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Text(
                                "Size:",
                                style: TextStyle(
                                    fontSize: 20,fontWeight: FontWeight.bold, color: Colors.grey.shade700),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(width: 20,),
                              Row(
                                children: [
                                  ItemSize(size: 1,),
                                  ItemSize(size: 2,),
                                  ItemSize(size: 3,),
                                  ItemSize(size: 4,),
                                  ItemSize(size: 5,),
                                  ItemSize(size: 6,),
                                  ItemSize(size: 7,),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Text(
                                "Color:",
                                style: TextStyle(
                                    fontSize: 20,fontWeight: FontWeight.bold, color: Colors.grey.shade700),
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(width: 20,),
                              Row(
                                children: [
                                  ItemColor(color: Colors.red,),
                                  ItemColor(color: Colors.black,),
                                  ItemColor(color: Colors.purple,),
                                  ItemColor(color: Colors.blue,),
                                  ItemColor(color: Colors.yellow,),
                                  ItemColor(color: Colors.white,),
                                  ItemColor(color: Colors.tealAccent,)
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0,right: 25,top: 10,bottom:25),
                          child: Container(
                            height: 55,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.purple.shade600,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5
                                )
                              ]
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text("Add to cart",style: TextStyle(fontSize: 25,color: Colors.grey.shade100),textAlign: TextAlign.center,),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
