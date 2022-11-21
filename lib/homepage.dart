import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:shopping_app_ui/cart_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_ui/women_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'baby_page.dart';
import 'men_page.dart';
import 'my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> mytab=[
    MyTab(tabName: "Men",),
    MyTab(tabName: "Women",),
    MyTab(tabName: "Baby",),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mytab.length,
      child: SafeArea(
        child: Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              onTap: (index){},
              color: Colors.deepPurple.shade500,
                height: 65,
                items: [
                  Icon(Icons.home_filled,size: 30,color: Colors.white,),
                  Icon(Icons.add,size: 30,color: Colors.grey.shade400,),
                  Icon(Icons.settings,size: 30,color: Colors.grey.shade400,)
                ]),
            body: SingleChildScrollView(
              child: Column(
          children: [
              //app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.sort,
                          size: 35,
                          color: Colors.grey.shade600,
                        ),
                        SizedBox(width: 15,),
                        Text(
                          "G&K store",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Times New Roman",
                              color: Colors.deepPurple.shade700),
                        ),
                      ],
                    ),
                    Badge(
                      badgeColor: Colors.red,
                      child: IconButton(
                        onPressed: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>CartPage()));
                        },
                        icon:Icon (Icons.shopping_bag_sharp,
                        size: 35,
                        color: Colors.brown.shade600,)
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //search bar
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search_sharp,size: 30,),
                            hintText: "Search ...",
                            hintStyle: TextStyle(fontSize: 22),
                            suffixIcon: Icon(Icons.camera_alt,size: 30,)
                          ),
                        ),
                      ),
                    ),
                    //tabbar
                    Container(
                        child: TabBar(
                            indicatorColor: Colors.black87,
                            indicatorWeight: 3,
                            tabs: mytab)),
                    //tabbar view
                    Expanded(child: TabBarView(children: [
                      MenPage(),
                      WomenPage(),
                      BabyPage(),
                    ]))

                  ],
                ),
              )
          ],
        ),
            )),
      ),
    );
  }
}
