import 'package:flutter/material.dart';

class ItemSize extends StatelessWidget {
  final int size;
  const ItemSize({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 8
            )
          ]
      ),
      child: Text(size.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
    );
  }
}
