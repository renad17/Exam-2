import 'package:flutter/material.dart';
final mainColor = Color.fromARGB(255, 41, 2, 45);
final myappBar = AppBar(
  backgroundColor: Colors.white,
  elevation: 0,
  // automaticallyImplyLeading: false,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Delivery',
        style: TextStyle(
          color: mainColor,
          fontSize: 14,
        ),
      ),
      Text(
        'Pickup',
        style: TextStyle(
          color: mainColor,
          fontSize: 14,
        ),
      ),
      Column(
        children: [
          Text(
            'Deleiver to',
            style: TextStyle(
              color: mainColor,
              fontSize: 14,
            ),
          ),
          const Text(
            'Home',
            style: TextStyle(color: Colors.black,fontSize: 14,),
            
          ),
        ],
      )
    ],
  ),
);
