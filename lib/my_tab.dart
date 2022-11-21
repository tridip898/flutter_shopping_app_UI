import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String tabName;
  const MyTab({Key? key, required this.tabName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 50,
      child: Container(
        padding: EdgeInsets.all(5),
        child: Text(tabName,style: TextStyle(fontSize: 25,color: Colors.deepPurple),),
      ),
    );
  }
}
