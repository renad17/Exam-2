import 'package:flutter/material.dart';
import 'package:flutter_exam/components/app_bar.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Orders',style: TextStyle(color: mainColor),),
              Text('Reservations',style: TextStyle(color: mainColor),),
            ],
          ),
        ),
      ),
    );
  }
}