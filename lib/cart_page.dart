import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.grey.shade900,
                )),
            title: Text(
              "Your Cart",
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey.shade900,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black87,
                  size: 30,
                ),
                tooltip: "More",
              )
            ],
          ),
          body: Consumer<CartModel>(
            builder: (context, value, child) {
              return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                            itemCount: value.CartItems.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10),
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    height: 80,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent.shade400
                                            .withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(15)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 60,
                                              child: Image.asset(
                                                  value.CartItems[index][3]),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text(
                                                  value.CartItems[index][0],
                                                  style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight: FontWeight.bold,
                                                      fontFamily:
                                                          "Times New Roman"),
                                                ),
                                                Text(
                                                  '\$' +
                                                      value.CartItems[index][2],
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color:
                                                          Colors.grey.shade700),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Provider.of<CartModel>(context,
                                                      listen: false)
                                                  .removeItem(index);
                                            },
                                            icon: Icon(Icons.cancel_outlined))
                                      ],
                                    )),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                                padding: EdgeInsets.all(5),
                                child: Icon(Icons.add)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Add coupon",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Total Price",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey.shade700),
                                  ),
                                  Text(
                                    '\$' + value.CalculateTotal(),
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Spacer(),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Pay now",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey.shade200),
                                  ))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}
