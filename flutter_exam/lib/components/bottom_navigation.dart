import 'package:flutter/material.dart';
import 'package:flutter_exam/components/app_bar.dart';
import 'package:flutter_exam/pages/order_page.dart';
import 'package:flutter_exam/pages/profile_page.dart';
import '../pages/home_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  List screenList = [const HomePage(), const OrderPage(),const ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: myappBar,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: mainColor,
        iconSize: 28,
        elevation: 0,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.food_bank_outlined
          ), label: 'Chefz'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded), label: 'Orders'),
              BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
      body: screenList[currentIndex],
    );
  }
}